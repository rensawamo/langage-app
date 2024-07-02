import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:flutter/material.dart';

class WordTopicSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 20),
              _buildQuizList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/header_image.png',
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            'Quizzy App',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lets play this awesome quiz app to enhance your knowledge',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildQuizList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'All Items',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        _buildQuizListItem(context, 'Android', 'History and People', '9 mins'),
        _buildQuizListItem(
            context, 'Programming', 'Basic Programming Concepts', '13 mins'),
        _buildQuizListItem(context, 'Web Development',
            'Introduction to Web Technologies', '12 mins'),
        _buildQuizListItem(context, 'Science', 'Biology and Chemistry', '15 mins'),
      ],
    );
  }

  Widget _buildQuizListItem(
      BuildContext context, String title, String subtitle, String duration) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(Icons.book, size: 40),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_time),
            SizedBox(height: 5),
            Text(duration),
          ],
        ),
        onTap: () {
          WordlistPageData().go(context);
        },
      ),
    );
  }
}
