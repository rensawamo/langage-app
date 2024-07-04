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
              path: '/wordTopic',
              factory: $WordTopicPageDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'wordlist',
                  factory: $WordlistPageDataExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'wordDetail',
                  factory: $wordDetailPageDataExtension._fromState,
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
              path: '/quizSelect',
              factory: $QuizSelectPageDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'quiz',
                  factory: $QuizPageDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ThirdBranch.$navigatorKey,
          observers: ThirdBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/favorite',
              factory: $QuizFavoritePageDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: FourthBranch.$navigatorKey,
          observers: FourthBranch.$observers,
          routes: [
            GoRouteData.$route(
              path: '/setting_root',
              factory: $SettingPageDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $WordTopicPageDataExtension on WordTopicPageData {
  static WordTopicPageData _fromState(GoRouterState state) =>
      const WordTopicPageData();

  String get location => GoRouteData.$location(
        '/wordTopic',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WordlistPageDataExtension on WordlistPageData {
  static WordlistPageData _fromState(GoRouterState state) =>
      const WordlistPageData();

  String get location => GoRouteData.$location(
        '/wordTopic/wordlist',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $wordDetailPageDataExtension on wordDetailPageData {
  static wordDetailPageData _fromState(GoRouterState state) =>
      const wordDetailPageData();

  String get location => GoRouteData.$location(
        '/wordTopic/wordDetail',
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
        '/quizSelect',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizPageDataExtension on QuizPageData {
  static QuizPageData _fromState(GoRouterState state) => const QuizPageData();

  String get location => GoRouteData.$location(
        '/quizSelect/quiz',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizFavoritePageDataExtension on QuizFavoritePageData {
  static QuizFavoritePageData _fromState(GoRouterState state) =>
      const QuizFavoritePageData();

  String get location => GoRouteData.$location(
        '/favorite',
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
        '/setting_root',
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
