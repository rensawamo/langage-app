import 'package:core_constants/constants.dart';
import 'package:core_views/extension/view+extention.dart';
import 'package:core_views/widgets/app_base_frame.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBaseFrame(
      screenContext: context,
      hasPrevButton: false,
      shouldRemoveFocus: true,
      title: 'トピック',
      body: Padding(
        padding: const EdgeInsets.all(15.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("単語"),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.blue),
              onTap: () => GoRouter.of(context).pushNamed(
                MyAppRouteConstraint.quizRouteName,
                extra: 15,
              ),
              title: Text('問題数 15問'),
              subtitle: Text('通勤や隙間時間に～'),
              tileColor: Colors.blue[50], // 背景色の設定
            ),
            SizedBox(height: context.mediaQueryHeight * .02),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.green),
              trailing: Icon(
                Icons.play_arrow,
              ),
              title: Text('問題数 30問'),
              subtitle: Text('休憩や余裕があるときに～'),
              tileColor: Colors.green[50],
              onTap: () => GoRouter.of(context).pushNamed(
                MyAppRouteConstraint.quizRouteName,
                extra: 30,
              ).then((value) {
                print('戻り値: $value');
              }),
            ),
            SizedBox(height: context.mediaQueryHeight * .02),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.red),
              trailing: Icon(
                Icons.play_arrow,
              ),
              title: Text('問題数 50問'),
              subtitle: Text('しっかりと学習～'),
              tileColor: Colors.red[50],
              onTap: () => GoRouter.of(context)
                  .pushNamed(MyAppRouteConstraint.quizRouteName, extra: 50)
                  .then((value) {
                print('戻り値: $value');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
