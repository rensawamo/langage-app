import 'package:flutter/material.dart';

import 'common.dart';

void main() {
  patrolSetUp(() {
    // Smoke test for https://github.com/leancodepl/patrol/issues/2021
    expect(2 + 2, equals(4));
  });

  patrol(
    'counter state is the same after going to Home and switching apps',
    ($) async {
      await createApp($);
      await $(#word_list_card_0).tap();
      expect(find.text('Word List'), findsOneWidget);
    },
  );
}
