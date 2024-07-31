import 'package:core_foundation/foundation.dart';
import 'package:flutter/material.dart';

import 'utility/common.dart';

void main() {
  patrolSetUp(() {
    // Smoke test for https://github.com/leancodepl/patrol/issues/2021
    expect(2 + 2, equals(4));
  });

  patrol(
    'counter state is the same after going to Home and switching apps',
    ($) async {
      await createApp($);
      await $.waitUntilVisible(find.byKey(AppKeys.splash));

      await $.waitUntilVisible(find.byKey(AppKeys.quizbar));
      await $.tap(find.byKey(AppKeys.quizbar));

      await $.waitUntilVisible(find.byKey(AppKeys.quizAdjective));
      await $.tap(find.byKey(AppKeys.quizAdjective));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 2');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 3');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 4');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 5');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 6');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 7');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 8');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 9');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 10');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 11');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 12');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 13');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 14');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      await $.waitUntilVisible(find.byKey(AppKeys.quizTyles));
      expect($(find.byKey(AppKeys.quizIndex)).text, 'Quiz 15');
      await $.tap(find.byKey(AppKeys.quizNextButton));

      // クイズが15題終了あとに リザルトページに行く
      await $.waitUntilVisible(find.byKey(AppKeys.quizResultPieChart));
      // null が適切に未回答というStringに変換されて 回答一つしなくてもデータがrouterに渡される
      expect($(find.byKey(AppKeys.quizResultScore)).text, 'Total Score 0 / 15');

      await $.tap(find.byKey(AppKeys.seeTable));
      await $.waitUntilVisible(find.byKey(AppKeys.quizResultTable));

      // 未回答の場合は ---- が表示される
      expect($(find.byKey(AppKeys.quizResultRow3).at(0)).text, '----');

      await $.tap(find.byKey(AppKeys.quizStar).at(0));
      // アイコンボタンの色を取得してアサート
      Icon icon =
          find.byKey(AppKeys.quizStar).at(0).evaluate().first.widget as Icon;
      expect(icon.color, Colors.orange);

      // await $.pumpAndSettle();
      // await $.tap(find.byKey(AppKeys.backButton));

      // await $.waitUntilVisible(find.byKey(AppKeys.quizResultPieChart));
      // await $.tap(find.byKey(AppKeys.seeTable));

      // // 戻ってもお気に入りが保持されているか
      // await $.waitUntilVisible(find.byKey(AppKeys.quizResultTable));
      // find.byKey(AppKeys.quizStar).at(0).evaluate().first.widget as Icon;
      // expect(icon.color, Colors.orange);
    },
  );
}
