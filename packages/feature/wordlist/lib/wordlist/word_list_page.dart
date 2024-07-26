import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:core_ui/ui.dart';
import 'package:feature_wordlist/wordlist/word_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WordListPage extends StatelessWidget {
  final QuizTopicType quizTopicType;

  WordListPage({
    required this.quizTopicType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.watch(WordlistProvider.notifier);
      List<String> quizzes = ref.watch(WordlistProvider).quizzes;
      List<String> answers = ref.watch(WordlistProvider).answers;
      List<String> sentences = ref.watch(WordlistProvider).sentences;
      List<String> translations = ref.watch(WordlistProvider).translations;
      List<String> pronunciations = ref.watch(WordlistProvider).pronunciations;
      List<bool> isFavorites = ref.watch(WordlistProvider).isFavorites;

      return AppBaseFrame(
        screenContext: screenContext,
        hasPrevButton: true,
        shouldRemoveFocus: true,
        title: quizTopicType.getQuizTopicWord(context),
        initFrame: (context, ref) async {
          final vm = ref.watch(WordlistProvider.notifier);

          // クイズのタイプ
          vm.quizTopicType = quizTopicType;

          Locale appLocale = Localizations.localeOf(context);
          vm.language = appLocale.languageCode;

          // 初期設定
          await vm.init();
        },
        backOnTap: () {
          context.pop();
        },
        body: ref.watch(WordlistProvider).isLoading
            ? const Center(child: CircularProgressIndicator())
            : quizzes.isEmpty
                ? _empty(context)
                : ListView.builder(
                    key: PageStorageKey(0),
                    controller: ref.read(WordlistProvider).scrollController,
                    scrollDirection: Axis.vertical,
                    itemCount: quizzes.length,
                    itemBuilder: (context, index) {
                      return Card(
                         key: Key('word_list_card_$index'),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: ListTile(
                            leading: Text(
                              '${index + 1}',
                              style: TextStyle(fontSize: 20),
                            ),
                            title: Text(
                              quizzes[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              answers[index],
                              style: TextStyle(fontSize: 16),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.star,
                                color: isFavorites[index]
                                    ? Colors.orange
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                vm.updateFavorite(
                                    index,
                                    quizzes[index],
                                    answers[index],
                                    sentences[index],
                                    translations[index],
                                    pronunciations[index],
                                    quizTopicType);
                              },
                            ),
                            onTap: () {
                              wordDetailPageData(
                                quizzes[index],
                                answers[index],
                                sentences[index],
                                translations[index],
                                pronunciations[index],
                                isFavorites[index],
                                quizTopicType,
                              ).push(context).then(
                                (value) {
                                  vm.getQuizList(quizTopicType);
                                },
                              );
                            },
                          ));
                    },
                  ),
      );
    });
  }

  Widget _empty(BuildContext context) {
    return TileEmptyText(
      header: AppLocalizations.of(context).noStarSentence,
      detail: '',
    );
  }
}
