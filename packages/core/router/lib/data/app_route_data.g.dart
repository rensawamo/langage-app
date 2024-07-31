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
                GoRouteData.$route(
                  path: 'quizResult',
                  factory: $QuizResultPageDataExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'quizResultTable',
                  factory: $QuizResultTablePageDataExtension._fromState,
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
  static WordlistPageData _fromState(GoRouterState state) => WordlistPageData(
        quizTopicType: _$QuizTopicTypeEnumMap
            ._$fromName(state.uri.queryParameters['quiz-topic-type']!),
      );

  String get location => GoRouteData.$location(
        '/wordTopic/wordlist',
        queryParams: {
          'quiz-topic-type': _$QuizTopicTypeEnumMap[quizTopicType],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$QuizTopicTypeEnumMap = {
  QuizTopicType.favorite: 'favorite',
  QuizTopicType.adjective: 'adjective',
  QuizTopicType.adverb: 'adverb',
  QuizTopicType.verb: 'verb',
  QuizTopicType.noun: 'noun',
  QuizTopicType.pronoun: 'pronoun',
  QuizTopicType.greet: 'greet',
  QuizTopicType.proverb: 'proverb',
  QuizTopicType.phrase: 'phrase',
  QuizTopicType.total: 'total',
};

extension $wordDetailPageDataExtension on wordDetailPageData {
  static wordDetailPageData _fromState(GoRouterState state) =>
      wordDetailPageData(
        state.uri.queryParameters['word']!,
        state.uri.queryParameters['meaning']!,
        state.uri.queryParameters['sentence']!,
        state.uri.queryParameters['translation']!,
        state.uri.queryParameters['pronunciation']!,
        _$boolConverter(state.uri.queryParameters['is-favorite']!),
        _$QuizTopicTypeEnumMap
            ._$fromName(state.uri.queryParameters['quiz-topic-type']!),
      );

  String get location => GoRouteData.$location(
        '/wordTopic/wordDetail',
        queryParams: {
          'word': word,
          'meaning': meaning,
          'sentence': sentence,
          'translation': translation,
          'pronunciation': pronunciation,
          'is-favorite': isFavorite.toString(),
          'quiz-topic-type': _$QuizTopicTypeEnumMap[quizTopicType],
        },
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
  static QuizPageData _fromState(GoRouterState state) => QuizPageData(
        _$QuizTopicTypeEnumMap
            ._$fromName(state.uri.queryParameters['topic-param']!),
        int.parse(state.uri.queryParameters['extra']!),
      );

  String get location => GoRouteData.$location(
        '/quizSelect/quiz',
        queryParams: {
          'topic-param': _$QuizTopicTypeEnumMap[topicParam],
          'extra': extra.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuizResultPageDataExtension on QuizResultPageData {
  static QuizResultPageData _fromState(GoRouterState state) =>
      QuizResultPageData(
        totalScore: _$convertMapValue(
                'total-score', state.uri.queryParameters, int.parse) ??
            0,
        count:
            _$convertMapValue('count', state.uri.queryParameters, int.parse) ??
                0,
        quizzes:
            state.uri.queryParametersAll['quizzes']?.map((e) => e).toList() ??
                const [],
        answers:
            state.uri.queryParametersAll['answers']?.map((e) => e).toList() ??
                const [],
        sentences:
            state.uri.queryParametersAll['sentences']?.map((e) => e).toList() ??
                const [],
        translations: state.uri.queryParametersAll['translations']
                ?.map((e) => e)
                .toList() ??
            const [],
        pronunciations: state.uri.queryParametersAll['pronunciations']
                ?.map((e) => e)
                .toList() ??
            const [],
        isFavorites: state.uri.queryParametersAll['is-favorites']
                ?.map(_$boolConverter)
                .toList() ??
            const [],
        scores: state.uri.queryParametersAll['scores']
                ?.map(_$boolConverter)
                .toList() ??
            const [],
        topicType: _$QuizTopicTypeEnumMap
            ._$fromName(state.uri.queryParameters['topic-type']!),
        textType: _$convertMapValue('text-type', state.uri.queryParameters,
            _$AppTextSizeTypeEnumMap._$fromName),
      );

  String get location => GoRouteData.$location(
        '/quizSelect/quizResult',
        queryParams: {
          if (totalScore != 0) 'total-score': totalScore.toString(),
          if (count != 0) 'count': count.toString(),
          if (quizzes != const []) 'quizzes': quizzes.map((e) => e).toList(),
          if (answers != const []) 'answers': answers.map((e) => e).toList(),
          if (sentences != const [])
            'sentences': sentences.map((e) => e).toList(),
          if (translations != const [])
            'translations': translations.map((e) => e).toList(),
          if (pronunciations != const [])
            'pronunciations': pronunciations.map((e) => e).toList(),
          if (isFavorites != const [])
            'is-favorites': isFavorites.map((e) => e.toString()).toList(),
          if (scores != const [])
            'scores': scores.map((e) => e!.toString()).toList(),
          'topic-type': _$QuizTopicTypeEnumMap[topicType],
          if (textType != null)
            'text-type': _$AppTextSizeTypeEnumMap[textType!],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$AppTextSizeTypeEnumMap = {
  AppTextSizeType.middle: 'middle',
  AppTextSizeType.large: 'large',
  AppTextSizeType.exLarge: 'ex-large',
};

extension $QuizResultTablePageDataExtension on QuizResultTablePageData {
  static QuizResultTablePageData _fromState(GoRouterState state) =>
      QuizResultTablePageData(
        quizzes:
            state.uri.queryParametersAll['quizzes']?.map((e) => e).toList() ??
                const [],
        answers:
            state.uri.queryParametersAll['answers']?.map((e) => e).toList() ??
                const [],
        scores:
            state.uri.queryParametersAll['scores']?.map((e) => e).toList() ??
                const [],
        isFavorites: state.uri.queryParametersAll['is-favorites']
                ?.map(_$boolConverter)
                .toList() ??
            const [],
        sentences:
            state.uri.queryParametersAll['sentences']?.map((e) => e).toList() ??
                const [],
        translations: state.uri.queryParametersAll['translations']
                ?.map((e) => e)
                .toList() ??
            const [],
        pronunciations: state.uri.queryParametersAll['pronunciations']
                ?.map((e) => e)
                .toList() ??
            const [],
        topicType: _$QuizTopicTypeEnumMap
            ._$fromName(state.uri.queryParameters['topic-type']!),
      );

  String get location => GoRouteData.$location(
        '/quizSelect/quizResultTable',
        queryParams: {
          if (quizzes != const []) 'quizzes': quizzes.map((e) => e).toList(),
          if (answers != const []) 'answers': answers.map((e) => e).toList(),
          if (scores != const []) 'scores': scores.map((e) => e).toList(),
          if (isFavorites != const [])
            'is-favorites': isFavorites.map((e) => e.toString()).toList(),
          if (sentences != const [])
            'sentences': sentences.map((e) => e).toList(),
          if (translations != const [])
            'translations': translations.map((e) => e).toList(),
          if (pronunciations != const [])
            'pronunciations': pronunciations.map((e) => e).toList(),
          'topic-type': _$QuizTopicTypeEnumMap[topicType],
        },
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

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
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
