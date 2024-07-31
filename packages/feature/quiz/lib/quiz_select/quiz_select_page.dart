import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/quiz/quiz_page_data.dart';
import 'package:core_ui/ui.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class QuizSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBaseFrame(
      title: AppLocalizations.of(context).question,
      hasPrevButton: false,
      screenContext: context,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context).questionSentence,
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
                      AppLocalizations.of(context).adjective,
                      Colors.blue,
                      '',
                      QuizTopicType.adjective,
                      AppKeys.quizAdjective,
                    ),
                    _buildTopicCard(
                        context,
                        Icons.speed,
                        AppLocalizations.of(context).adverb,
                        Colors.green,
                        '',
                        QuizTopicType.adverb,
                        AppKeys.quizAdverb),
                    _buildTopicCard(
                        context,
                        Icons.directions_run,
                        AppLocalizations.of(context).verb,
                        Colors.red,
                        '',
                        QuizTopicType.verb,
                        AppKeys.quizVerb),
                    _buildTopicCard(
                        context,
                        Icons.category,
                        AppLocalizations.of(context).noun,
                        Colors.purple,
                        '',
                        QuizTopicType.noun,
                        AppKeys.quizNoun),
                    _buildTopicCard(
                        context,
                        Icons.person,
                        AppLocalizations.of(context).pronoun,
                        Colors.grey,
                        '',
                        QuizTopicType.pronoun,
                        AppKeys.quizPronoun),
                    _buildTopicCard(
                        context,
                        Icons.handshake,
                        AppLocalizations.of(context).greet,
                        Colors.orange,
                        '',
                        QuizTopicType.greet,
                        AppKeys.quizGreeting),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopicCard(
      BuildContext context,
      IconData icon,
      String title,
      MaterialColor color,
      String subtitle,
      QuizTopicType quizTopicType,
      Key key) {
    return Card(
      key: key,
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
