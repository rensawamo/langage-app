import 'package:core_foundation/foundation.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:core_repository/theme_color/theme_color_repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/helper_test.mocks.dart';

void main() {
  late MockSharedPreferencesRepositoryImpl mockPrefsRepository;
  late ProviderContainer container;

  setUp(() {
    mockPrefsRepository = MockSharedPreferencesRepositoryImpl();
    container = createContainer(
      overrides: [
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockPrefsRepository),
      ],
    );
  });

  group('ThemeColorRepository', () {
    test('最初によばれたときにnullがlocaldbから帰ってきたときに lightが適応されること', () async {
      // arrange
      when(mockPrefsRepository.fetch(AppPrefsKey.configModeType))
          .thenReturn(null);

      // act
      final themeNotifier =
          container.read(themeColorRepositoryProvider.notifier);
      await themeNotifier.loadTheme();

      // assert
      expect(themeNotifier.state, ThemeMode.light);
    });

    test('setTheme should set theme to dark', () async {
      // arrange
      when(mockPrefsRepository.save(any, any)).thenAnswer((_) async => true);

      // act
      final themeNotifier =
          container.read(themeColorRepositoryProvider.notifier);
      await themeNotifier.setTheme(ThemeMode.dark);

      // assert
      expect(themeNotifier.state, ThemeMode.dark);
      verify(mockPrefsRepository.save(any, ThemeMode.dark.index)).called(1);
    });
  });
}
