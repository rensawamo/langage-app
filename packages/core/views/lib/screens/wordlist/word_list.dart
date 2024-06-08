import 'package:core_enums/enums.dart';
import 'package:core_model/api/word_get_all/word_get_all_dao.dart';
import 'package:core_sql/sql.dart';
import 'package:core_views/components/tile_empty_text.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/screens/wordlist/word_list_state.dart';
import 'package:core_views/screens/wordlist/word_list_viewmodel.dart';
import 'package:core_views/utility/text_styles.dart';
import 'package:core_views/views.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';

/// Provider
final wordListProvider = StateNotifierProvider.autoDispose<
    WordListViewmodelInterface, WordListState>(
  (ref) {
    return WordListViewmodel(
      WordListState(
        quizzes: [""],
        answers: [],
        isFavorites: [],
        currentPage: 1,
        scrollController: ScrollController(),
        selectValue: QuizTopicType.word,
        selectDropDownValue: "単語",
        speak: (String text) {
          FlutterTts().speak(text);
        },
      ),
      WordGetAllDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class WordList extends StatelessWidget {
  WordList({
    Key? key,
    required this.dropDownMenu,
    this.mode,
  }) : super(key: key);

  /// ドロップダウンメニュー
  final Map<String, QuizTopicType> dropDownMenu;
  final ThemeMode? mode;

  /// 初期化処理
  void init(BuildContext context, WidgetRef ref) async {
    final vm = ref.watch(wordListProvider.notifier);

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
    // 単語一覧 取得
    vm.getQuizList(QuizTopicType.word);
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
      List<String> quizzes = ref.watch(wordListProvider).quizzes;

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
                  : quizzes.first.isEmpty
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
      final vm = ref.watch(wordListProvider.notifier);
      final selectDropDownValue =
          ref.watch(wordListProvider).selectDropDownValue;

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
              vm.selectDropDownMenu(key, dropDownMenu[key]!);
              vm.getQuizList(dropDownMenu[key]!);
            }
          },
        ),
      );
    });
  }

  Widget _table(List<String> quizzes) {
    return Consumer(builder: (context, ref, child) {
      List<String> answers = ref.watch(wordListProvider).answers;
      List<bool> isFavorites = ref.watch(wordListProvider).isFavorites;
      Function speak = ref.read(wordListProvider).speak;
      ScrollController _scrollController =
          ref.read(wordListProvider).scrollController;
      String topicType = ref.watch(wordListProvider.notifier).getTopic();

      return Center(
          child: Container(
        width: context.mediaQueryWidth * 0.95,
        height: context.mediaQueryHeight * 0.7,
        child: SingleChildScrollView(
          controller: _scrollController,
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
                  TableCell(child: _buildCell('Star')),
                ],
              ),
              ...List.generate(
                  quizzes.length,
                  (index) => TableRow(
                        children: [
                          TableCell(
                              child: _buildSubtitleCell(quizzes[index], index)),
                          TableCell(
                              child: _buildSubtitleCell(answers[index], index)),
                          // TableCell(
                          //     child: _buildMeanCell(answers[index], index,
                          //         isHideAnswers[index], toggleAnswer)),
                          TableCell(
                              child: _buildVoiceCell(index, quizzes, speak)),
                          TableCell(
                              child: _buildFavoriteCell(
                                  index,
                                  isFavorites[index],
                                  quizzes[index],
                                  answers[index],
                                  topicType,
                                  context,
                                  ref)),
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

  Widget _buildFavoriteCell(int index, bool isFavorite, String word,
          String answer, String topicType, context, ref) =>
      Consumer(builder: (context, ref, child) {
        final vm = ref.watch(wordListProvider.notifier);

        return Container(
          height: 65,
          color: index % 2 == 0
              ? _cellOddColor.color(mode)
              : _cellEvenColor.color(mode),
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              // 削除
              isFavorite ? Icons.star : Icons.star_border,
              color: Colors.yellow[700],
            ),
            onPressed: () async {
              if (isFavorite) {
                await QuizFavoriteSql.delete(
                    word, AppSettingInfo().appInstallType.name);
              } else {
                await QuizFavoriteSql.insert(word, answer, topicType,
                    AppSettingInfo().appInstallType.name);
              }
              vm.updateFavorite(index);
            },
          ),
        );
      });

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
      header: '',
      detail: '',
    );
  }
}
