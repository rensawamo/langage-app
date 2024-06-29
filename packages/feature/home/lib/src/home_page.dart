import 'package:core_router/data/app_route_data.dart';
import 'package:core_router/data/wordlist/timeline_route_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'General Knowledge', icon: Icons.lightbulb),
    Category(name: 'Sports', icon: Icons.sports_soccer),
    Category(name: 'Movies', icon: Icons.movie),
    Category(name: 'Science', icon: Icons.science),
    Category(name: 'News', icon: Icons.article),
    Category(name: 'Music', icon: Icons.music_note),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(category: category);
        },
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.orange.shade100,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        leading: Icon(category.icon, color: Colors.orange),
        title: Text(category.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
        onTap: () {
          WordlistRouteData().go(context);
        },
      ),
    );
  }
}
