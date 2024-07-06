import 'package:core_enums/enums.dart';
import 'package:core_sql/sql.dart';
import 'package:core_utility/utility.dart';
import 'package:feature_wordlist/word_detail/word_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// 出題単語一覧 Viewmodel
class WordDetailViewmodel extends WordDetailViewmodelInterface {
  /// コンストラクタ

  WordDetailViewmodel(
    super.state,
  );

  /// 初期設定
  @override
  Future<void> init(bool isFavorite) async {
    // tls初期化
    initializeTts();
    // お気に入りの初期設定
    state = state.copyWith(isFavorite: isFavorite);
  }

  @override
  void initializeTts() {
    flutterTts.setLanguage(AppSettingInfo().ftsSetting); // 言語設定
    flutterTts.setPitch(1.0);
    flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
}

/// E201.受診予約一覧 Viewmodel インターフェース
abstract class WordDetailViewmodelInterface
    extends StateNotifier<WordDetailState> {
  WordDetailViewmodelInterface(super.state);

  Future<void> init(bool isFavorite);

  /// TTSの初期化
  void initializeTts();

  // tts の言語設定
  late FlutterTts flutterTts;

  // 発声
  Future<void> speak(String text);
}
