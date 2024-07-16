
import 'package:core_foundation/foundation.dart';
import 'package:core_router/data/quiz/quiz_page_data.dart';
import 'package:core_router/data/setting/setting_page_data.dart';
import 'package:core_router/data/wordlist/wordlist_route_data.dart';
import 'package:core_router/observer/transition_observer.dart';
import 'package:core_router/router/routes.dart';
import 'package:feature_splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../router/app_navigation_bar.dart';
part 'app_route_data.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final firstNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'first');
final secoundNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'secound');
final thirdNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'third');
final fourthNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'fourth');

//// statusful shell
/// アプリ全体の宣言ルート
@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    /// bottom tab1
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        //// Apponitment
        TypedGoRoute<WordTopicPageData>(path: Routes.wordTopic, routes: [
          // Wordlist
          TypedGoRoute<WordlistPageData>(path: Routes.wordlist),
          // detail
          TypedGoRoute<wordDetailPageData>(path: Routes.wordDetail),
        ]),
      ],
    ),

    /// bottom tab2
    TypedStatefulShellBranch<SecoundBranch>(
      routes: [
        TypedGoRoute<QuizSelectPageData>(path: Routes.quizSelect, routes: [
          TypedGoRoute<QuizPageData>(path: Routes.quiz),
          TypedGoRoute<QuizResultTablePageData>(path: Routes.quizResult),
        ]),
      ],
    ),

    /// bottom tab3
    TypedStatefulShellBranch<ThirdBranch>(
      routes: [
        TypedGoRoute<SettingPageData>(path: Routes.setting_root, routes: []),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(
      navigationShell: navigationShell,
    );
  }
}

/// bottom tab1 branch
class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final List<NavigatorObserver> $observers = [
    TransitionObserver(),
  ];
  static final GlobalKey<NavigatorState> $navigatorKey = firstNavigatorKey;
}

/// bottom tab2 branch
class SecoundBranch extends StatefulShellBranchData {
  const SecoundBranch();

  static final List<NavigatorObserver> $observers = [
    TransitionObserver(),
  ];
  static final GlobalKey<NavigatorState> $navigatorKey = secoundNavigatorKey;
}

/// bottom tab3 branch
class ThirdBranch extends StatefulShellBranchData {
  const ThirdBranch();

  static final List<NavigatorObserver> $observers = [
    TransitionObserver(),
  ];
  static final GlobalKey<NavigatorState> $navigatorKey = thirdNavigatorKey;
}

/// bottom tab4 branch
class FourthBranch extends StatefulShellBranchData {
  const FourthBranch();

  static final List<NavigatorObserver> $observers = [
    TransitionObserver(),
  ];
  static final GlobalKey<NavigatorState> $navigatorKey = fourthNavigatorKey;
}

//// splash screen
@TypedGoRoute<TopRouteData>(
  path: Routes.top,
  routes: <TypedGoRoute<GoRouteData>>[],
)
class TopRouteData extends GoRouteData {
  const TopRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SplashPage();
  }
}
