import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// bottom navigation bar 管理クラス
class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.list), label: 'ex1'),
          NavigationDestination(icon: Icon(Icons.question_mark), label: 'ex2'),
          NavigationDestination(icon: Icon(Icons.star), label: 'ex3'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'ex4'),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
