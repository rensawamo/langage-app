import 'package:core_foundation/foundation.dart';

import 'quiz/quiz_test.dart';
import 'utility/common.dart';
import 'word_list/word_list_test.dart';

void main() {
  // ignore: omit_local_variable_types
  patrol('at the beginning', ($) async {
    await _splashPageTest($);
  });

  patrol('feature_splash', ($) async {
    await _splashPageTest($);
  });
  patrol('feature_wordlist', ($) async {
    await wordListPageTest($);
  });
  patrol('feature_quiz', ($) async {
    await quizPageTest($);
  });
}

// initial test
Future<void> _splashPageTest(PatrolIntegrationTester $) async {
  await createApp($);
  await $.waitUntilVisible(find.byKey(AppKeys.splash));
}
