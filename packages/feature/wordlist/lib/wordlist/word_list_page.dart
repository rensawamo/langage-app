import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

import 'package:core_dao/dao/word_get_all/word_get_all_dao.dart';
import 'package:core_enums/enums.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:feature_wordlist/wordlist/word_list_state.dart';
import 'package:feature_wordlist/wordlist/word_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

/// Provider
final WordlistProvider = StateNotifierProvider.autoDispose<
    WordListViewmodelInterface, WordListState>(
  (ref) {
    return WordListViewmodel(
      WordListState(
        quizzes: [],
        answers: [],
        isFavorites: [],
        scrollController: ScrollController(),
        selectValue: QuizTopicType.noun,
        isLoading: true,
        currentPage: 1,
        speak: (String text) {
          FlutterTts().speak(text);
        },
      ),
      WordGetAllDao(),
    );
  },
);

/// Quiz の 問題を表示する画面
class WordListPage extends StatelessWidget {
  WordListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext screenContext) {
    return Consumer(builder: (context, ref, child) {
      List<String> quizzes = ref.watch(WordlistProvider).quizzes;
      List<String> answers = ref.watch(WordlistProvider).answers;

      return AppBaseFrame(
        screenContext: screenContext,
        hasPrevButton: true,
        shouldRemoveFocus: true,
        title: '単語一覧',
        initFrame: (context, ref) async {
          final vm = ref.watch(WordlistProvider.notifier);

          // クイズのタイプ
          vm.quizTopicType = QuizTopicType.noun;

          vm.flutterTts = FlutterTts();
          // 初期設定
          await vm.init();
        },
        backOnTap: () {
          context.pop();
        },
        body: ref.watch(WordlistProvider).isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: quizzes.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: ListTile(
                      leading: Text(
                        index.toString(),
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
                      trailing: Icon(Icons.cloud, color: Colors.blue),
                      onTap: () {
                        wordDetailPageData().push(context);
                      },
                    ),
                  );
                },
              ),
      );
    });
  }
}
