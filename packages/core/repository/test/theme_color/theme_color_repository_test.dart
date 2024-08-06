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
  late ThemeColorRepository themeColorRepository;

  setUp(() {
    mockPrefsRepository = MockSharedPreferencesRepositoryImpl();
    container = createContainer(
      overrides: [
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockPrefsRepository),
      ],
    );
    themeColorRepository =
        container.read(themeColorRepositoryProvider.notifier);
  });

  group('ThemeColorRepository', () {
    test('[正常系] loadTheme 最初によばれたときにnullがlocaldbから帰ってきたときに lightが適応されること',
        () async {
      // arrange
      when(mockPrefsRepository.fetch(any)).thenReturn(null);

      // act
      await themeColorRepository.loadTheme();

      // assert
      expect(themeColorRepository.state, ThemeMode.light);
    });

    test('[正常系] setTheme', () async {
      // arrange
      when(mockPrefsRepository.save(any, any)).thenAnswer((_) async => true);

      // act
      await themeColorRepository.setTheme(ThemeMode.dark);

      // assert
      expect(themeColorRepository.state, ThemeMode.dark);
      verify(mockPrefsRepository.save(any, ThemeMode.dark.index)).called(1);
    });
  });
}
