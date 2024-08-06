import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/repository.dart';
import 'package:core_ui/ui.dart';
import 'package:core_utility/utility/app_review.dart';
import 'package:feature_wordlist/word_detail/word_detail_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:core_designsystem/designsystem.dart';

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
      final vm = ref.watch(wordDetailProvider.notifier);
      // DI speak
      // tts 発音関数
      final Function speak = ref.read(ttsRepositoryProvider).speak;
      final AppInstallType appInstallType = ref.read(appSettingInfoProvider);
      String appStoreUrl = appInstallType.name == 'koreanBeginner'
          ? 'https://apps.apple.com/jp/app/%E9%9F%93%E5%9B%BD%E8%AA%9E%E5%88%9D%E7%B4%9A/id6503278804'
          : 'https://apps.apple.com/jp/app/%E8%8B%B1%E8%AA%9E%E5%88%9D%E7%B4%9A/id6605926859';
      return AppBaseFrame(
        screenContext: context,
        hasPrevButton: true,
        shouldRemoveFocus: true,
        title: AppLocalizations.of(context).word,
        initFrame: (context, ref) async {
          // お気に入りの初期設定
          // 初期設定
          await vm.init(isFavorite);
          /// レビュー数が15の時にレビューを促す
          /// TOOD: レビュされてない場合、再度レビューを促すようにしたい
          int count =
              await ref.read(reviewCountSqlRepositoryProvider).getCount(appInstallType);
          if (count == 15) {
            DrawerHelper.launchStoreReview(context, appStoreUrl: appStoreUrl);
          }
        },
        backOnTap: () {
          context.pop(true);
        },
        body: Consumer(builder: (context, ref, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Card(
                      key: AppKeys.wordDetail,
                      color: Colors.white,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  word,
                                  style: TextStyle(
                                      fontSize: word.length > 8 ? 20 : 28,
                                      fontWeight: FontWeight.bold,
                                      color: appInstallType ==
                                              AppInstallType.koreanBeginner
                                          ? Colors.orange
                                          : Colors.blue),
                                ),
                                IconButton(
                                  icon:
                                      Icon(Icons.volume_up, color: Colors.blue),
                                  onPressed: () async {
                                    await speak(word);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              pronunciation,
                              style: AppTextStyles.caption(context,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              meaning,
                              style: AppTextStyles.headline(context,
                                  color: Colors.black),
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
                      AppLocalizations.of(context).sentence,
                      textAlign: TextAlign.left,
                      style: AppTextStyles.headline(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.volume_up, color: Colors.blue),
                      onPressed: () async {
                        await speak(sentence);
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
                  AppLocalizations.of(context).translation,
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
          );
        }),
      );
    });
  }
}
