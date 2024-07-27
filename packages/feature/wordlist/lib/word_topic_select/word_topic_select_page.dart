import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:core_ui/ui.dart';
import 'package:flutter/material.dart';

class WordTopicSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBaseFrame(
      screenContext: context,
      title: AppLocalizations.of(context).wordlist,
      hasPrevButton: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // _buildHeader(),
              SizedBox(height: 20),
              _buildQuizList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuizList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildQuizListItem(context, AppLocalizations.of(context).adjective, '',
            QuizTopicType.adjective, Colors.blue, AppKeys.wordAdjective),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).adverb, '',
            QuizTopicType.adverb, Colors.green, AppKeys.wordAdverb),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).verb, '',
            QuizTopicType.verb, Colors.red, AppKeys.wordVerb),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).noun, '',
            QuizTopicType.noun, Colors.purple, AppKeys.wordNoun),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).pronoun, '',
            QuizTopicType.pronoun, Colors.grey, AppKeys.wordPronoun),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).greet, '',
            QuizTopicType.greet, Colors.teal, AppKeys.wordGreeting),
        SizedBox(height: 10),
        _buildQuizListItem(context, AppLocalizations.of(context).star, '',
            QuizTopicType.favorite, Colors.orange, AppKeys.wordFavorite),
      ],
    );
  }

  Widget _buildQuizListItem(BuildContext context, String title, String subtitle,
      QuizTopicType quizTopicType, Color color, Key key) {
    return Card(
      key: key,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(Icons.book, size: 40, color: color),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          WordlistPageData(
            quizTopicType: quizTopicType,
          ).go(context);
        },
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
