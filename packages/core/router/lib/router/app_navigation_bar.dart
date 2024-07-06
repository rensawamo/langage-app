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
          NavigationDestination(icon: Icon(Icons.book), label: '単語'),
          NavigationDestination(icon: Icon(Icons.quiz), label: '問題'),
          NavigationDestination(icon: Icon(Icons.settings), label: '設定'),
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
