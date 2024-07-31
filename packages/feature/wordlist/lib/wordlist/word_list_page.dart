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
      final vm = ref.watch(wordlistProvider.notifier);
      final state = ref.watch(wordlistProvider);

      return AppBaseFrame(
        screenContext: screenContext,
        hasPrevButton: true,
        shouldRemoveFocus: true,
        title: quizTopicType.getQuizTopicWord(context),
        initFrame: (context, ref) async {
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
        body: ref.watch(wordlistProvider).isLoading
            ? const Center(child: CircularProgressIndicator())
            : state.quizzes.isEmpty
                ? _empty(context)
                : ListView.builder(
                    key: PageStorageKey(0),
                    controller: state.scrollController,
                    scrollDirection: Axis.vertical,
                    itemCount: state.quizzes.length,
                    itemBuilder: (context, index) {
                      return Card(
                          key: AppKeys.wordList,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: ListTile(
                            leading: Text(
                              '${index + 1}',
                              style: TextStyle(fontSize: 20),
                            ),
                            title: Text(
                              state.quizzes[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              state.answers[index],
                              style: TextStyle(fontSize: 16),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                key: AppKeys.wordListStar,
                                Icons.star,
                                color: state.isFavorites[index]
                                    ? Colors.orange
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                vm.updateFavorite(
                                    index,
                                    state.quizzes[index],
                                    state.answers[index],
                                    state.sentences[index],
                                    state.translations[index],
                                    state.pronunciations[index],
                                    quizTopicType);
                              },
                            ),
                            onTap: () {
                              wordDetailPageData(
                                state.quizzes[index],
                                state.answers[index],
                                state.sentences[index],
                                state.translations[index],
                                state.pronunciations[index],
                                state.isFavorites[index],
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
