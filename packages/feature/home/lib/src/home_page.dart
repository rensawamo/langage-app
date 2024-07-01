// import 'package:core_router/data/app_route_data.dart';
// import 'package:core_router/data/wordlist/timeline_route_data.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   final List<Category> categories = [
//     Category(name: 'General Knowledge', icon: Icons.lightbulb),
//     Category(name: 'Sports', icon: Icons.sports_soccer),
//     Category(name: 'Movies', icon: Icons.movie),
//     Category(name: 'Science', icon: Icons.science),
//     Category(name: 'News', icon: Icons.article),
//     Category(name: 'Music', icon: Icons.music_note),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz App'),
//       ),
//       body: ListView.builder(
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           final category = categories[index];
//           return CategoryCard(category: category);
//         },
//       ),
//     );
//   }
// }

// class Category {
//   final String name;
//   final IconData icon;

//   Category({required this.name, required this.icon});
// }

// class CategoryCard extends StatelessWidget {
//   final Category category;

//   CategoryCard({required this.category});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       color: Colors.orange.shade100,
//       child: ListTile(
//         contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//         leading: Icon(category.icon, color: Colors.orange),
//         title: Text(category.name,
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
//         onTap: () {
//           WordlistRouteData().go(context);
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';




import 'package:flutter/material.dart';


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quizzy App'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               _buildHeader(),
//               SizedBox(height: 20),
//               _buildQuizList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Column(
//         children: [
//           Image.asset(
//             'assets/header_image.png', // Make sure to add your header image to assets
//             height: 100,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Quizzy App',
//             style: TextStyle(
//               fontSize: 24,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             'Lets play this awesome quiz app to enhance your knowledge',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.white70,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQuizList() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'All Items',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10),
//         _buildQuizListItem('Android', 'History and People', '9 mins'),
//         _buildQuizListItem('Programming', 'Basic Programming Concepts', '13 mins'),
//         _buildQuizListItem('Web Development', 'Introduction to Web Technologies', '12 mins'),
//         _buildQuizListItem('Science', 'Biology and Chemistry', '15 mins'),
//       ],
//     );
//   }

//   Widget _buildQuizListItem(String title, String subtitle, String duration) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: ListTile(
//         leading: Icon(Icons.book, size: 40),
//         title: Text(title),
//         subtitle: Text(subtitle),
//         trailing: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.access_time),
//             SizedBox(height: 5),
//             Text(duration),
//           ],
//         ),
//         onTap: () {
//           // Add your onTap functionality here
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Advanced Words'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.feedback),
//             onPressed: () {
//               // Add your feedback functionality here
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: IconButton(
//                 icon: Icon(Icons.star_border),
//                 onPressed: () {
//                   // Add your favorite functionality here
//                 },
//               ),
//             ),
//             Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Word of the Day',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Swipe to see previous words',
//                     style: TextStyle(fontSize: 16, color: Colors.grey),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Pithy',
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.purple,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Meaning:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'using few words in a clever and effective way',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Example:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'A popular speaker, Janet was known for her pithy sayings.',
//               style: TextStyle(fontSize: 18),
//             ),
//             Spacer(),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: FloatingActionButton(
//                 onPressed: () {
//                   // Add your share functionality here
//                 },
//                 child: Icon(Icons.share),
//               ),
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.circle, size: 12, color: Colors.grey),
//                   SizedBox(width: 8),
//                   Icon(Icons.circle, size: 12, color: Colors.black),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
                // Add your functionality here
              },
            ),
          );
        },
      ),
    );
  }
}
