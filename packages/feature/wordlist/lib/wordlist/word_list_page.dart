import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:flutter/material.dart';

class WordListPage extends StatelessWidget {
  final List<Map<String, String>> words = [
    {'number': '1', 'word': 'improve', 'meaning': 'を向上させる;よくなる'},
    {'number': '2', 'word': 'relate', 'meaning': 'を（...と）関連づける;（...に）関連する'},
    {'number': '3', 'word': 'provide', 'meaning': 'を供給する(≒supply)'},
    {'number': '4', 'word': 'afford', 'meaning': 'を持つ[する]余裕がある'},
    {'number': '5', 'word': 'punish', 'meaning': 'を罰する'},
    {'number': '6', 'word': 'provide', 'meaning': 'を供給する(≒supply)'},
    {'number': '7', 'word': 'improve', 'meaning': 'を向上させる;よくなる'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word List'),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: Text(
                words[index]['number']!,
                style: TextStyle(fontSize: 20),
              ),
              title: Text(
                words[index]['word']!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                words[index]['meaning']!,
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(Icons.cloud, color: Colors.blue),
              onTap: () {
                wordDetailPageData().go(context);
              },
            ),
          );
        },
      ),
    );
  }
}
