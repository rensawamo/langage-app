import 'package:core_foundation/foundation.dart';

import '../utility/common.dart';

Future<void> wordListPageTest(PatrolIntegrationTester $) async {
  await createApp($);
  await $.waitUntilVisible(find.byKey(AppKeys.splash));

  await $.waitUntilVisible(find.byKey(AppKeys.wordAdjective));
  await $.tap(find.byKey(AppKeys.wordAdjective));

  await $.waitUntilVisible(find.text('크다'));
  expect(find.text('크다'), findsOneWidget);

  await $.tap(find.byKey(AppKeys.backButton));
  await $.waitUntilVisible(find.byKey(AppKeys.wordAdverb));
  await $.tap(find.byKey(AppKeys.wordAdverb));
  await $.waitUntilVisible(find.text('아주'));
  expect(find.text('아주'), findsOneWidget);
}
