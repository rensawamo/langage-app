import 'package:core_enums/enums.dart';
import 'package:core_views/views.dart';
import 'package:feature_wordlist/word_detail/word_detail_state.dart';
import 'package:feature_wordlist/word_detail/word_detail_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';
import 'package:core_designsystem/designsystem.dart';

/// Provider
final WordDetailProvider = StateNotifierProvider.autoDispose<
    WordDetailViewmodelInterface, WordDetailState>(
  (ref) {
    return WordDetailViewmodel(
      WordDetailState(
        isFavorite: false,
      ),
    );
  },
);

class WordDetailPage extends StatelessWidget {
  final String word; // 単語
  final String meaning; // 意味
  final String sentence; // 例文
  final String translation; // 翻訳
  final String pronunciation; // 発音
  final bool isFavorite; // お気に入り
  final QuizTopicType quizTopicType;

  const WordDetailPage({
    required this.word,
    required this.meaning,
    required this.sentence,
    required this.translation,
    required this.pronunciation,
    required this.isFavorite,
    required this.quizTopicType,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final vm = ref.watch(WordDetailProvider.notifier);

      return AppBaseFrame(
        screenContext: context,
        hasPrevButton: true,
        shouldRemoveFocus: true,
        title: '単語',
        initFrame: (context, ref) async {
          // お気に入りの初期設定

          vm.flutterTts = FlutterTts();
          // 初期設定
          await vm.init(isFavorite);
        },
        backOnTap: () {
          context.pop(true);
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                word,
                                style: TextStyle(
                                  
                                    fontSize: word.length > 8 ? 20 : 28,

                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              // speak
                              IconButton(
                                icon: Icon(Icons.volume_up, color: Colors.blue),
                                onPressed: () async {
                                  await vm.speak(word);
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            pronunciation,
                            style: AppTextStyles.caption(context,color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            meaning,

                            style: AppTextStyles.headline(context,color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "例文",
                    textAlign: TextAlign.left,
                    style: AppTextStyles.headline(context),
                  ),
                  IconButton(
                    icon: Icon(Icons.volume_up, color: Colors.blue),
                    onPressed: () async {
                      await vm.speak(sentence);
                    },
                  ),
                ],
              ),
              Text(
                sentence,
                style: AppTextStyles.headline(context),
              ),
              SizedBox(height: 20),
              Text(
                "訳文",
                textAlign: TextAlign.left,
                style: AppTextStyles.headline(context),
              ),
              SizedBox(height: 20),
              Text(
                translation,
                style: AppTextStyles.headline(context),
              ),
              Spacer(),


            ],
          ),
        ),
      );
    });
  }
}
