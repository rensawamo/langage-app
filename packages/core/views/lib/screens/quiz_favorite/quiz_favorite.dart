import 'package:core_enums/enums.dart';
import 'package:core_model/model.dart';
import 'package:core_model/sql/quiz_favorite/quiz_favorite_dao.dart';
import 'package:core_views/components/tile_empty_text.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_state.dart';
import 'package:core_views/screens/quiz_favorite/quiz_favorite_viewmodel.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/views.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:core_views/widgets/app_delete_dialog.dart';
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
        quizzes: [""],
        answers: [],
        isHideAnswers: [],
        scrollController: ScrollController(),
        selectValue: QuizTopicType.word,
        selectDropDownValue: "単語",
        speak: (String text) {
          FlutterTts().speak(text);
        },
      ),
      QuizFavoriteDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class QuizFavorite extends StatelessWidget {
  QuizFavorite({
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

    // アプリケーションの種別
    vm.appInstallType = AppSettingInfo().appInstallType;

    // クイズのタイプ
    vm.quizTopicType = QuizTopicType.word;

    // インジケータ表示
    vm.showIndicator = () {
      AppIndicator.show(context);
    };
    // viewmodel側にインジケータ破棄処理をセット
    vm.hideIndicator = () {
      AppIndicator.hide(context);
    };
    vm.flutterTts = FlutterTts();

    // 初期設定
    await vm.init();
    vm.getFavorites(QuizTopicType.word);
  }

  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);

  // 表の タイトルの背景色
  final _cellTitleColor = const AppColorSet(type: AppColorType.cellTitle);

  // 表の奇数時の背景色
  final _cellOddColor = const AppColorSet(type: AppColorType.cellOdd);
  // 表の偶数時の背景色
  final _cellEvenColor = const AppColorSet(type: AppColorType.cellEven);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      List<String> quizzes = ref.watch(QuizFavoriteProvider).quizzes;

      return AppBaseFrame(
          screenContext: context,
          hasPrevButton: false,
          shouldRemoveFocus: true,
          backOnTap: () {
            Navigator.pop(context);
          },
          title: 'お気に入り',
          initFrame: (context, ref) {
            // 初期化処理
            init(context, ref);
          },
              body: Column(
            children: [
              _dropDown(),
              quizzes.isEmpty
                  ? _empty()
                  : quizzes.first == ""
                      ? Container()
                      : Expanded(child: _table(quizzes))
            ],
          ));
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
        data:
            Theme.of(context).copyWith(canvasColor: _cellEvenColor.color(mode)),
        child: DropdownButton<String>(
          value: selectDropDownValue,
          items: dropDownMenu.keys
              .map((String key) => DropdownMenuItem<String>(
                    value: key,
                    child: Text(
                      key,
                      style: TextStyle(color: _defaultColor.color(mode)),
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
        height: context.mediaQueryHeight * 0.75,
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
                              child: _buildSubtitleCell(quizzes[index], index)),
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
        color: index % 2 == 0
            ? _cellOddColor.color(mode)
            : _cellEvenColor.color(mode),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => speak(quizzes[index]),
        ),
      );

  Widget _buildFavoriteCell(int index, context, ref) => Container(
        height: 65,
        color: index % 2 == 0
            ? _cellOddColor.color(mode)
            : _cellEvenColor.color(mode),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
              // 削除
              Icons.delete,
              color: _defaultColor.color(mode)),
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
        color: _cellTitleColor.color(mode),
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(color: _defaultColor.color(mode)),
            textAlign: TextAlign.left),
      );

  Widget _buildMeanCell(
          String text, int index, bool isHideAnswer, Function toggleAnswer) =>
      Container(
        height: 65,
        padding: EdgeInsets.all(5),
        color: index % 2 == 0
            ? _cellOddColor.color(mode)
            : _cellEvenColor.color(mode),
        alignment: Alignment.center,
        child: InkWell(
          child: isHideAnswer == true
              ? FilledButton(
                  onPressed: () {
                    toggleAnswer(index);
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: _cellTitleColor.color(mode),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text('表示'),
                )
              : Text(text, style: TextStyle(color: _defaultColor.color(mode))),
        ),
      );

  Widget _buildSubtitleCell(String text, int index) => Container(
        height: 65,
        padding: const EdgeInsets.all(8),
        color: index % 2 == 0
            ? _cellOddColor.color(mode)
            : _cellEvenColor.color(mode),
        alignment: Alignment.center,
        child: Text(text,
            textAlign: TextAlign.left,
            style: TextStyles.s(
              color: _defaultColor.color(mode),
            )),
      );

  Widget _empty() {
    return const TileEmptyText(
      header: 'お気に入りは登録されていません。問題を解いて登録しましょう！',
      detail: '',
    );
  }
}
