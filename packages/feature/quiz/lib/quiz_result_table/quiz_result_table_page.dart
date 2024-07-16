import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_state.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

/// Provider
final WordlistProvider = StateNotifierProvider.autoDispose<
    QuizResultTablePageViewmodelInterface, QuizResultTablePageState>(
  (ref) {
    return QuizResultTablePageViewmodel(QuizResultTablePageState(
      isFavorites: [],
      speak: (String text) {
        FlutterTts().speak(text);
      },
    ));
  },
);

/// クイズの結果のテーブルページ
class QuizResultTablePage extends StatelessWidget {
  final List<String> quizzes;
  final List<String> answers;
  final List<String> scores;
  final List<bool> isFavorites;
  final List<String> sentences;
  final List<String> translations;
  final List<String> pronunciations;
  final QuizTopicType topicType;

  const QuizResultTablePage({
    required this.quizzes,
    required this.answers,
    required this.scores,
    required this.isFavorites,
    required this.sentences,
    required this.translations,
    required this.pronunciations,
    required this.topicType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return AppBaseFrame(
          screenContext: context,
          title: '正誤表',
          initFrame: (context, ref) async {
            // お気に入りの初期設定
            final vm = ref.read(WordlistProvider.notifier);

            // isFavoritesの初期設定
            vm.flutterTts = FlutterTts();
            vm.quizTopicType = topicType;
            // 初期設定
            await vm.init(isFavorites);
          },
          backOnTap: () {
            final favoriteList = ref.read(WordlistProvider).isFavorites;
            context.pop(favoriteList);
          },
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeaderRow(context),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, // 垂直方向のスクロールを有効にする
                    child: _buildDataTable(context),
                  ),
                ),
              ],
            ),
          ));
    });
  }

  // ヘッダー行を構築
  Widget _buildHeaderRow(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            TableCell(
              child: _buildCell(context, 'Quiz'),
            ),
            TableCell(child: _buildCell(context, 'Answer')),
            TableCell(child: _buildCell(context, 'Score')),
            TableCell(child: _buildCell(context, 'Voice')),
            TableCell(child: _buildCell(context, 'Star')),
          ],
        ),
      ],
    );
  }

  // データ行を構築
  Widget _buildDataTable(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        ...List.generate(
          quizzes.length,
          (index) => TableRow(
            children: [
              TableCell(
                  child: _buildSubtitleCell(
                      context, topicType, quizzes[index], index)),
              TableCell(
                  child: _buildSubtitleCell(
                      context, topicType, answers[index], index)),
              TableCell(
                  child: _buildSubtitleCell(
                      context, topicType, scores[index], index)),
              TableCell(child: _buildVoiceCell(context, index)),
              TableCell(
                  child: _buildFavoriteCell(
                      context,
                      index,
                      quizzes[index],
                      answers[index],
                      sentences[index],
                      translations[index],
                      pronunciations[index],
                      topicType)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVoiceCell(BuildContext context, int index) => Container(
        color: index % 2 == 0
            ? AppColorsSet.getTableOddRowColor(context)
            : AppColorsSet.getTableEvenRowColor(context),
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => null,
        ),
      );

  Widget _buildFavoriteCell(
          BuildContext context,
          int index,
          String text,
          String answer,
          String sentence,
          String translation,
          String pronunciation,
          QuizTopicType quizTopicType) =>
      Consumer(builder: (context, ref, child) {
        final vm = ref.read(WordlistProvider.notifier);
        // お気に入り
        final isFavorites = ref.watch(WordlistProvider).isFavorites;
        return Container(
          color: index % 2 == 0
              ? AppColorsSet.getTableOddRowColor(context)
              : AppColorsSet.getTableEvenRowColor(context),
          height: 65,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: IconButton(
            icon: Icon(
              isFavorites[index] ? Icons.star : Icons.star_border,
              color: isFavorites[index] ? Colors.orange : Colors.grey,
            ),
            onPressed: () async {
              vm.updateFavorite(index, text, answer, sentence, translation,
                  pronunciation, quizTopicType);
            },
          ),
        );
      });

  Widget _buildCell(BuildContext context, String text) => Container(
        color: AppColorsSet.getTableTitleColor(context),
        padding: const EdgeInsets.all(8),
        height: 58,
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyles.caption(context),
        ),
      );

  Widget _buildSubtitleCell(BuildContext context, QuizTopicType quizTopicType,
          String text, int index) =>
      Container(
        color: index % 2 == 0
            ? AppColorsSet.getTableOddRowColor(context)
            : AppColorsSet.getTableEvenRowColor(context),
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: quizTopicType == QuizTopicType.greet
              ? AppTextStyles.caption2(context,
                  color: text == "正解"
                      ? Colors.red
                      : text == "不正解"
                          ? Colors.blue
                          : AppColorsSet.getReverseColor(context))
              : AppTextStyles.caption(context,
                  color: text == "正解"
                      ? Colors.red
                      : text == "不正解"
                          ? Colors.blue
                          : AppColorsSet.getReverseColor(context)),
        ),
      );
}
