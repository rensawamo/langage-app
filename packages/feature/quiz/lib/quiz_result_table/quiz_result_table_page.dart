import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_quiz/quiz_result_table/quiz_result_table_page_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
      final vm = ref.read(wordlistProvider.notifier);
      // DI
      // speaking
      Function speak = ref.read(ttsRepositoryProvider).speak;

      return AppBaseFrame(
          screenContext: context,
          hasPrevButton: true,
          title: AppLocalizations.of(context).table,
          initFrame: (context, ref) async {
            // isFavoritesの初期設定
            vm.quizTopicType = topicType;
            // 初期設定
            await vm.init(isFavorites);
          },
          backOnTap: () {
            final favoriteList = ref.watch(wordlistProvider).isFavorites;
            context.pop(favoriteList);
          },
          body: Padding(
            key: AppKeys.quizResultTable,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeaderRow(context),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, // 垂直方向のスクロールを有効にする
                    child: _buildDataTable(context, speak),
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
  Widget _buildDataTable(BuildContext context, Function speank) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        ...List.generate(
          quizzes.length,
          (index) => TableRow(
            children: [
              TableCell(
                  child: _buildSubtitleCell(context, topicType, quizzes[index],
                      index, AppKeys.quizResultRow1)),
              TableCell(
                  child: _buildSubtitleCell(context, topicType, answers[index],
                      index, AppKeys.quizResultRow2)),
              TableCell(
                  child: _buildSubtitleCell(context, topicType, scores[index],
                      index, AppKeys.quizResultRow3)),
              TableCell(child: _buildVoiceCell(context, index, speank)),
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

  Widget _buildVoiceCell(BuildContext context, int index, Function speak) =>
      Container(
        color: index % 2 == 0
            ? AppColorsSet.getTableOddRowColor(context)
            : AppColorsSet.getTableEvenRowColor(context),
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.blue),
          onPressed: () => speak(quizzes[index]),
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
        final vm = ref.read(wordlistProvider.notifier);
        // お気に入り
        final isFavorites = ref.watch(wordlistProvider).isFavorites;
        return Container(
          color: index % 2 == 0
              ? AppColorsSet.getTableOddRowColor(context)
              : AppColorsSet.getTableEvenRowColor(context),
          height: 65,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: IconButton(
            key: AppKeys.quizStar,
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
          String text, int index, Key key) =>
      Container(
        color: index % 2 == 0
            ? AppColorsSet.getTableOddRowColor(context)
            : AppColorsSet.getTableEvenRowColor(context),
        height: 65,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          text,
          key: key,
          textAlign: TextAlign.left,
          style: quizTopicType == QuizTopicType.greet
              ? AppTextStyles.caption2(context,
                  color: text == AppLocalizations.of(context).correct
                      ? Colors.red
                      : text == AppLocalizations.of(context).wrong
                          ? Colors.blue
                          : AppColorsSet.getReverseColor(context))
              : AppTextStyles.caption(context,
                  color: text == AppLocalizations.of(context).correct
                      ? Colors.red
                      : text == AppLocalizations.of(context).wrong
                          ? Colors.blue
                          : AppColorsSet.getReverseColor(context)),
        ),
      );
}
