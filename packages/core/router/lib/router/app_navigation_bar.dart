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
          NavigationDestination(icon: Icon(Icons.home), label: 'ex1'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'ex2'),
          NavigationDestination(icon: Icon(Icons.track_changes), label: 'ex3'),
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
