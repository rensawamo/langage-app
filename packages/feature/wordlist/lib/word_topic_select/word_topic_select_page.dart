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
      title: "単語リスト",
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
        _buildQuizListItem(
            context, '形容詞', '', QuizTopicType.adjective, Colors.blue),
        SizedBox(height: 10),
        _buildQuizListItem(
            context, '副詞', '', QuizTopicType.adverb, Colors.green),
        SizedBox(height: 10),
        _buildQuizListItem(context, '動詞', '', QuizTopicType.verb, Colors.red),
        SizedBox(height: 10),
        _buildQuizListItem(
            context, '名詞', '', QuizTopicType.noun, Colors.purple),
        SizedBox(height: 10),
        _buildQuizListItem(
            context, '代名詞', '', QuizTopicType.pronoun, Colors.grey),
        SizedBox(height: 10),
        _buildQuizListItem(context, '挨拶', '', QuizTopicType.greet, Colors.teal),
        SizedBox(height: 10),
        _buildQuizListItem(
            context, 'お気に入り', '', QuizTopicType.favorite, Colors.orange),
      ],
    );
  }

  Widget _buildQuizListItem(BuildContext context, String title, String subtitle,
      QuizTopicType quizTopicType, Color color) {
    return Card(
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
