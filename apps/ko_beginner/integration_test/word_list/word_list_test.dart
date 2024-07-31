import 'dart:io';

import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../utility/common.dart';

Future<void> wordListPageTest(PatrolIntegrationTester $) async {
  final String appId;
  if (Platform.isIOS) {
    appId = 'com.apple.Preferences';
  } else if (Platform.isAndroid) {
    appId = 'com.android.settings';
  } else {
    throw UnsupportedError('Unsupported platform');
  }

  await createApp($);
  await $.waitUntilVisible(find.byKey(AppKeys.splash));

  // 形容詞
  await $.waitUntilVisible(find.byKey(AppKeys.wordAdjective));
  await $.tap(find.byKey(AppKeys.wordAdjective));
  await $.waitUntilVisible(find.text('크다'));
  expect(find.text('크다'), findsOneWidget);
  await $.tap(find.byKey(AppKeys.backButton));

  // 副詞
  await $.waitUntilVisible(find.byKey(AppKeys.wordAdverb));
  await $.tap(find.byKey(AppKeys.wordAdverb));
  await $.waitUntilVisible(find.text('아주'));
  expect(find.text('아주'), findsOneWidget);
  await $.tap(find.byKey(AppKeys.backButton));

  // 動詞
  await $.waitUntilVisible(find.byKey(AppKeys.wordVerb));
  await $.tap(find.byKey(AppKeys.wordVerb));
  await $.waitUntilVisible(find.text('먹다'));
  expect(find.text('먹다'), findsOneWidget);
  await $.tap(find.byKey(AppKeys.backButton));

  await $.native.swipe(
    from: Offset(0.5, 0.8),
    to: Offset(0.5, 0.2),
    appId: appId,
  );

  // 代名詞
  await $.waitUntilVisible(find.byKey(AppKeys.wordPronoun));
  await $.tap(find.byKey(AppKeys.wordPronoun));
  await $.waitUntilVisible(find.text('나'));
  expect(find.text('나'), findsOneWidget);
  await $.tap(find.byKey(AppKeys.backButton));

  // 挨拶
  await $.waitUntilVisible(find.byKey(AppKeys.wordGreeting));
  await $.tap(find.byKey(AppKeys.wordGreeting));
  await $.waitUntilVisible(find.text('실례합니다'));
  expect(find.text('실례합니다'), findsOneWidget);
  await $.tap($(find.byKey(AppKeys.wordListStar).at(0)));
  // アイコンボタンの色を取得してアサート
  Icon icon =
      find.byKey(AppKeys.wordListStar).at(0).evaluate().first.widget as Icon;
  expect(icon.color, Colors.orange);

  await $.tap(find.byKey(AppKeys.wordList).at(0));

  // detail遷移
  await $.waitUntilVisible(find.byKey(AppKeys.wordDetail));
  expect(find.text('실례합니다'), findsOneWidget);
  await $.tap(find.byKey(AppKeys.backButton));
  icon = find.byKey(AppKeys.wordListStar).at(0).evaluate().first.widget as Icon;
  expect(icon.color, Colors.orange);

  await $.tap(find.byKey(AppKeys.backButton));

  // お気に入り
  await $.waitUntilVisible(find.byKey(AppKeys.wordFavorite));
  await $.tap(find.byKey(AppKeys.wordFavorite));
  // お気に入りが一つだけ追加されているか
  expect(find.byKey(AppKeys.wordListStar), findsNWidgets(1));
  await $.tap(find.byKey(AppKeys.wordList).at(0));
  await $.waitUntilVisible(find.byKey(AppKeys.wordDetail));
  expect(find.text('실례합니다'), findsOneWidget);
}
