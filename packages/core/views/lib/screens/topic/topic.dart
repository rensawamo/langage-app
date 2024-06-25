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
  final _defaultColor = const AppColorSet(type: AppColorType.defaultColor);
  final _question15Color = const AppColorSet(type: AppColorType.question15);
  final _question15IconColor =
      const AppColorSet(type: AppColorType.question15Icon);
  final _question30Color = const AppColorSet(type: AppColorType.question30);
  final _question30IconColor =
      const AppColorSet(type: AppColorType.question30Icon);
  final _question50Color = const AppColorSet(type: AppColorType.question50);
  final _question50IconColor =
      const AppColorSet(type: AppColorType.question50Icon);
  final _grreetingColor = const AppColorSet(type: AppColorType.greeting);
  final _grreetingIconColor =
      const AppColorSet(type: AppColorType.greetingIcon);

  final _favoriteColor = const AppColorSet(type: AppColorType.favorite);
  final _favoriteIconColor = const AppColorSet(type: AppColorType.favoriteIcon);

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
                        style: TextStyles.xl(
                          color: _defaultColor.color(),
                          type: textType,
                        ),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(
                          context,
                          10,
                          '問題数 10問',
                          'ちょっとした空き時間に～！',
                          _question15Color,
                          _question15IconColor,
                          QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(
                          context,
                          30,
                          '問題数 30問',
                          '休憩や余裕があるときに～！',
                          _question30Color,
                          _question30IconColor,
                          QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .02),
                      _tile(context, 50, '問題数 50問', 'じっくりと～！', _question50Color,
                          _question50IconColor, QuizTopicType.noun),
                      SizedBox(height: context.mediaQueryHeight * .035),
                      AppText(
                        text: "挨拶(20フレーズからランダム)",
                        style: TextStyles.xl(
                          color: _defaultColor.color(),
                          type: textType,
                        ),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .01),
                      _tile(
                          context,
                          10,
                          '問題数 10問',
                          'これだけは押さえよう！',
                          _grreetingColor,
                          _grreetingIconColor,
                          QuizTopicType.greet),
                      SizedBox(height: context.mediaQueryHeight * .035),
                      AppText(
                        text: "お気に入り",
                        style: TextStyles.xl(
                          color: _defaultColor.color(),
                          type: textType,
                        ),
                      ),
                      SizedBox(height: context.mediaQueryHeight * .01),
                      _tile(
                          context,
                          10,
                          'お気に入り',
                          'お気に入りに登録した問題から出題！',
                          _favoriteColor,
                          _favoriteIconColor,
                          QuizTopicType.favorite),
                      SizedBox(height: context.mediaQueryHeight * .035),
                    ]))));
  }

  // 問題のセレクトのたいる
  Widget _tile(context, int questionCount, String title, String subTitle,
      AppColorSet color, AppColorSet iconColor, QuizTopicType quizTopicType) {
    return ListTile(
      leading: Icon(Icons.question_answer, color: iconColor.color()),
      onTap: () =>
          GoRouter.of(context).pushNamed(MyAppRouteConstraint.quizRouteName,
              extra: TopicParam(
                quizTopicType: quizTopicType,
                extra: questionCount,
              )),
      title: AppText(
        text: title,
        style: TextStyles.l(
          color: _defaultColor.color(),
          type: textType,
        ),
      ),
      subtitle: AppText(
        text: subTitle,
        style: TextStyles.m(
          color: _defaultColor.color(),
          type: textType,
        ),
      ),
      tileColor: color.color(),
    );
  }
}
