import 'package:core_foundation/foundation.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:core_utility/utility/app_setting_info.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_state.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// クイズ画面のViewmodel
class QuizResultTablePageViewmodel
    extends QuizResultTablePageViewmodelInterface {
  /// コンストラクタ
  ///
  /// [state]で初期状態をセット
  /// [dao]API Modelクラス AppointmentGetListAllをセット
  QuizResultTablePageViewmodel(Ref ref, QuizResultTablePageState state)
      : super(ref, state);

  /// 初期設定
  ///
  @override
  Future<void> init(List<bool> isFavorite) async {
    initializeTts();
    state = state.copyWith(isFavorites: isFavorite);
  }

  /// おきにいりの更新
  @override
  void updateFavorite(
      int index,
      String text,
      String answer,
      String sentence,
      String translation,
      String pronunciation,
      QuizTopicType quizTopicType) async {
    // お気に入りの更新
    List<bool> isFavorites = List.from(state.isFavorites); // 変更可能なコピーを作成
    state =
        state.copyWith(isFavorites: isFavorites..[index] = !isFavorites[index]);

    final quizFavoriteSql = ref.read(quizFavoriteSqlRepositoryProvider);

    if (state.isFavorites[index]) {
      await quizFavoriteSql.insert(
        text,
        answer,
        sentence,
        translation,
        pronunciation,
        quizTopicType.name,
      );
    } else {
      await quizFavoriteSql.delete(text);
    }
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage(AppSettingInfo().ftsSetting);
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
}

/// Quize Viewmodel インターフェース
abstract class QuizResultTablePageViewmodelInterface
    extends StateNotifier<QuizResultTablePageState> {
  QuizResultTablePageViewmodelInterface(
    this.ref,
    super.state,
  );
  final Ref ref;

  // tts の言語設定
  late FlutterTts flutterTts;

  // 問題数
  late int questionCount;

  // トピックの種別
  late QuizTopicType quizTopicType;

  // 画面描写
  Future<void> init(List<bool> isFavorite);

  /// TTSの初期化
  void initializeTts();

  // お気に入りの更新
  void updateFavorite(
    int index,
    String text,
    String answer,
    String sentence,
    String translation,
    String pronunciation,
    QuizTopicType quizTopicType,
  );

  // 発声
  Future<void> speak(String text);
}
