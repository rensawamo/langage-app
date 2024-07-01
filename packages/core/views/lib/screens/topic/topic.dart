import 'package:core_constants/constants.dart';
import 'package:core_dao/dao/quiz_get_all/topic_param.dart';
import 'package:core_enums/enums.dart';

import 'package:core_utility/utility.dart';
import 'package:core_views/extension/view+extention.dart';

import 'package:core_views/widgets/app_base_frame.dart';
import 'package:core_views/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopicPage extends StatelessWidget {
  final ThemeMode? mode;
  final AppTextSizeType? textType;

  const TopicPage({
    this.mode,
    this.textType,
  });

  @override
  Widget build(BuildContext context) {
    return AppBaseFrame(
        screenContext: context,
        hasPrevButton: false,
        shouldRemoveFocus: true,
        title: 'トピック',
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppText(
                        text: "単語(300単語からランダム)",
                        style: AppTextStyles.body(context),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(context, 10, '問題数 10問', 'ちょっとした空き時間に～！',
                          QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(context, 30, '問題数 30問', '休憩や余裕があるときに～！',
                          QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(context, 50, '問題数 50問', 'じっくりと～！',
                          QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .035),
                      AppText(
                        text: "挨拶(20フレーズからランダム)",
                        style: AppTextStyles.body(context),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .01),
                      _tile(context, 10, '問題数 10問', 'これだけは押さえよう！',
                          QuizTopicType.greet),
                      SizedBox(height: context.mediaQueryHeight * .035),
                      AppText(
                        text: "お気に入り",
                        style: AppTextStyles.body(context),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .01),
                      _tile(context, 10, 'お気に入り', 'お気に入りに登録した問題から出題！',
                          QuizTopicType.favorite),
                      SizedBox(height: context.mediaQueryHeight * .035),
                    ]))));
  }

  // 問題のセレクトのたいる
  Widget _tile(context, int questionCount, String title, String subTitle,
      QuizTopicType quizTopicType) {
    return ListTile(
      onTap: () =>
          GoRouter.of(context).pushNamed(MyAppRouteConstraint.quizRouteName,
              extra: TopicParam(
                quizTopicType: quizTopicType,
                extra: questionCount,
              )),
      title: AppText(
        text: title,
        style: AppTextStyles.body(context),
      ),
      subtitle: AppText(
        text: subTitle,
        style: AppTextStyles.body(context),
      ),
    );
  }
}
