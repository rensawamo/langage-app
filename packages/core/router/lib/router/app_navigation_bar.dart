import 'package:core_designsystem/designsystem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// bottom navigation bar 管理クラス
/// [navigationShell] によって、画面遷移を管理する
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
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.book), label: AppLocalizations.of(context).word),
          NavigationDestination(
              icon: Icon(Icons.quiz),
              label: AppLocalizations.of(context).question),
          NavigationDestination(
              icon: Icon(Icons.settings),
              label: AppLocalizations.of(context).setting),
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
