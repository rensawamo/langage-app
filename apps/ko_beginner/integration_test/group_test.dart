import 'package:core_foundation/foundation.dart';
import 'utility/common.dart';
import 'word_list/word_list.dart';

void main() {
  patrol('at the beginning', ($) async {
    await _splashPageTest($);
  });

  group('top level group in file', () {
    group('splash', () {
      patrol('first', ($) async {
        await _splashPageTest($);
      });
      patrol('wordlist', ($) async {
        await wordListPageTest($);
      });
    });
  });
}

Future<void> _splashPageTest(PatrolIntegrationTester $) async {
  await createApp($);
  await $.waitUntilVisible(find.byKey(AppKeys.splash));
}
