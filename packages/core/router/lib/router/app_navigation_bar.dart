import 'package:core_designsystem/designsystem.dart';
import 'package:core_foundation/foundation.dart';
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
              key: AppKeys.wordbar,
              icon: Icon(Icons.book),
              label: AppLocalizations.of(context).word),
          NavigationDestination(
              key: AppKeys.quizbar,
              icon: Icon(Icons.quiz),
              label: AppLocalizations.of(context).question),
          NavigationDestination(
              key: AppKeys.settingbar,
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
