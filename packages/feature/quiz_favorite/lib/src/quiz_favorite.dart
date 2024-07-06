import 'package:core_designsystem/designsystem.dart';
import 'package:core_dao/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_enums/enums.dart';
import 'package:core_views/components/tile_empty_text.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/views.dart';
import 'package:core_views/widgets/app_delete_dialog.dart';
import 'package:feature_quiz_favorite/src/quiz_favorite_state.dart';
import 'package:feature_quiz_favorite/src/quiz_favorite_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Provider
final QuizFavoriteProvider = StateNotifierProvider.autoDispose<
    QuizeFavoriteViewmodelInterface, QuizFavoriteState>(
  (ref) {
    return QuizeFavoriteViewmodel(
      QuizFavoriteState(
        quizzes: [],
        answers: [],
        isHideAnswers: [],
        scrollController: ScrollController(),
        selectValue: QuizTopicType.noun,
        selectDropDownValue: "名詞",
        isLoading: false,
        speak: (String text) {
          FlutterTts().speak(text);
        },
      ),
      QuizFavoriteDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class QuizFavoritePage extends StatelessWidget {
  QuizFavoritePage({
    Key? key,
    required this.dropDownMenu,
    this.mode,
  }) : super(key: key);

  /// ドロップダウンメニュー
  final Map<String, QuizTopicType> dropDownMenu;
  final ThemeMode? mode;

  /// 初期化処理
  void init(BuildContext context, WidgetRef ref) async {
    final vm = ref.watch(QuizFavoriteProvider.notifier);

    // クイズのタイプ
    vm.quizTopicType = QuizTopicType.noun;

    vm.flutterTts = FlutterTts();
    // 初期設定
    await vm.init();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      List<String> quizzes = ref.watch(QuizFavoriteProvider).quizzes;

      return Scaffold(
        appBar: AppBar(
          title: const Text('お気に入り'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // gorouter.pop(context);
            },
          ),
        ),
        body: ref.watch(QuizFavoriteProvider).isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  _dropDown(),
                  quizzes.isEmpty ? _empty() : Expanded(child: _table(quizzes)),
                ],
              ),
      );
    });
  }

  /// ドロップダウンメニュー
  /// クイズの種別を選択する
  Widget _dropDown() {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(QuizFavoriteProvider.notifier);
      final selectDropDownValue =
          ref.watch(QuizFavoriteProvider).selectDropDownValue;

      return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: DropdownButton<String>(
          value: selectDropDownValue,
          items: dropDownMenu.keys
              .map((String key) => DropdownMenuItem<String>(
                    value: key,
                    child: Text(
                      key,
                    ),
                  ))
              .toList(),
          onChanged: (key) {
            if (key != null) {
              state.getFavorites(dropDownMenu[key]!);
              state.selectDropDownMenu(key);
            }
          },
        ),
      );
    });
  }

  Widget _table(List<String> quizzes) {
    return Consumer(builder: (context, ref, child) {
      List<String> answers = ref.watch(QuizFavoriteProvider).answers;
      List<bool> isHideAnswers = ref.watch(QuizFavoriteProvider).isHideAnswers;
      Function toggleAnswer =
          ref.watch(QuizFavoriteProvider.notifier).toggleAnswer;
      Function speak = ref.read(QuizFavoriteProvider).speak;

      return Center(
          child: Container(
        width: context.mediaQueryWidth * 0.95,
        height: context.mediaQueryHeight * 0.65,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 垂直方向のスクロールを有効にする
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: _buildCell('Quiz'),
                  ),
                  TableCell(child: _buildCell('Mean')),
                  TableCell(child: _buildCell('Voice')),
                  TableCell(child: _buildCell('Edit')),
                ],
              ),
              ...List.generate(
                  quizzes.length,
                  (index) => TableRow(
                        children: [
                          TableCell(
                              child: _buildSubtitleCell(
                                  context, quizzes[index], index)),
                          TableCell(
                              child: _buildMeanCell(answers[index], index,
                                  isHideAnswers[index], toggleAnswer)),
                          TableCell(
                              child: _buildVoiceCell(index, quizzes, speak)),
                          TableCell(
                              child: _buildFavoriteCell(index, context, ref)),
                        ],
                      )),
            ],
          ),
        ),
      ));
    });
  }

  Widget _buildVoiceCell(
    int index,
    List<String> quizzes,
    Function speak,
  ) =>
      Container(
        height: 65,
        // color: index % 2 == 0 ? _cellOddColor.color() : _cellEvenColor.color(),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => speak(quizzes[index]),
        ),
      );

  Widget _buildFavoriteCell(int index, context, ref) => Container(
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
              // 削除
              Icons.delete,
              color: Colors.red),
          onPressed: () async => {
            ShowDeleteDialog(context, "削除しますか？").then((bool? result) async {
              if (result != null) {
                final state = ref.read(QuizFavoriteProvider.notifier);
                await state.deleteFavorite(index);
              }
            })
          },
        ),
      );

  Widget _buildCell(String text) => Container(
        height: 58,
        padding:
            const EdgeInsets.only(top: 15, bottom: 10, left: 22, right: 22),
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(
              color: Colors.red,
            ),
            textAlign: TextAlign.left),
      );

  Widget _buildMeanCell(
          String text, int index, bool isHideAnswer, Function toggleAnswer) =>
      Container(
        height: 65,
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: InkWell(
          child: isHideAnswer == true
              ? FilledButton(
                  onPressed: () {
                    toggleAnswer(index);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text('表示'),
                )
              : Text(text, style: TextStyle(color: Colors.blue)),
        ),
      );

  Widget _buildSubtitleCell(BuildContext context, String text, int index) =>
      Container(
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(text,
            textAlign: TextAlign.left,
            style: AppTextStyles.body(context, color: Colors.blue)),
      );

  Widget _empty() {
    return const TileEmptyText(
      header: 'お気に入りは登録されていません。問題を解いて登録しましょう！',
      detail: '',
    );
  }
}
