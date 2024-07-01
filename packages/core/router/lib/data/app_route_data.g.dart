// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $topRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          observers: HomeBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomePageDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'wordlist',
                  factory: $WordlistRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SecoundBranch.$navigatorKey,
          observers: SecoundBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/topic',
              factory: $TopicRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ThirdBranch.$navigatorKey,
          observers: ThirdBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/favorite',
              factory: $QuizSelectPageDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: FourthBranch.$navigatorKey,
          observers: FourthBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/setting_root',
              factory: $SettingRootPageDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'setting',
                  factory: $SettingPageDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomePageDataExtension on HomePageData {
  static HomePageData _fromState(GoRouterState state) => const HomePageData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WordlistRouteDataExtension on WordlistRouteData {
  static WordlistRouteData _fromState(GoRouterState state) =>
      const WordlistRouteData();

  String get location => GoRouteData.$location(
        '/home/wordlist',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TopicRouteDataExtension on TopicRouteData {
  static TopicRouteData _fromState(GoRouterState state) =>
      const TopicRouteData();

  String get location => GoRouteData.$location(
        '/topic',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizSelectPageDataExtension on QuizSelectPageData {
  static QuizSelectPageData _fromState(GoRouterState state) =>
      const QuizSelectPageData();

  String get location => GoRouteData.$location(
        '/favorite',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingRootPageDataExtension on SettingRootPageData {
  static SettingRootPageData _fromState(GoRouterState state) =>
      const SettingRootPageData();

  String get location => GoRouteData.$location(
        '/setting_root',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingPageDataExtension on SettingPageData {
  static SettingPageData _fromState(GoRouterState state) =>
      const SettingPageData();

  String get location => GoRouteData.$location(
        '/setting_root/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topRouteData => GoRouteData.$route(
      path: '/top',
      factory: $TopRouteDataExtension._fromState,
    );

extension $TopRouteDataExtension on TopRouteData {
  static TopRouteData _fromState(GoRouterState state) => const TopRouteData();

  String get location => GoRouteData.$location(
        '/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
