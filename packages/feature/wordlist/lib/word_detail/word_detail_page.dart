import 'package:flutter/material.dart';

class WordDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Words'),
        actions: [
          IconButton(
            icon: Icon(Icons.feedback),
            onPressed: () {
              // Add your feedback functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {
                  // Add your favorite functionality here
                },
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Word of the Day',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Swipe to see previous words',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pithy',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Meaning:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'using few words in a clever and effective way',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Example:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'A popular speaker, Janet was known for her pithy sayings.',
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Add your share functionality here
                },
                child: Icon(Icons.share),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 12, color: Colors.grey),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 12, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
