import 'package:core_designsystem/designsystem.dart';
import 'package:core_enums/enums.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/quiz/quiz_page_data.dart';
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class QuizSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBaseFrame(
      title: "問題",
      hasPrevButton: false,
      screenContext: context,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ランダム15問の問題を解いてみよう！',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(16.0),
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _buildTopicCard(
                      context,
                      Icons.color_lens,
                      '形容詞',
                      Colors.blue,
                      '',
                      QuizTopicType.adjective,
                    ),
                    _buildTopicCard(context, Icons.speed, '副詞', Colors.green,
                        '', QuizTopicType.adjective),
                    _buildTopicCard(context, Icons.directions_run, '動詞',
                        Colors.red, '', QuizTopicType.verb),
                    _buildTopicCard(context, Icons.category, '名詞',
                        Colors.purple, '', QuizTopicType.noun),
                    _buildTopicCard(context, Icons.person, '代名詞', Colors.grey,
                        '', QuizTopicType.pronoun),
                    _buildTopicCard(context, Icons.handshake, '挨拶',
                        Colors.orange, '', QuizTopicType.greet),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopicCard(BuildContext context, IconData icon, String title,
      MaterialColor color, String subtitle, QuizTopicType quizTopicType) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          QuizPageData(
            quizTopicType,
            15,
          ).push(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Icon(icon, size: 50, color: color),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: AppTextStyles.caption(context),
            ),
          ],
        ),
      ),
    );
  }
}
