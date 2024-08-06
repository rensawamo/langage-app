import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';

import '../helper/helper_test.mocks.dart';

void main() {
  late MockSharedPreferencesRepositoryImpl mockPrefsRepository;
  late ProviderContainer container;
  late ThemeTextRepository themeTextRepository;
  setUp(() {
    mockPrefsRepository = MockSharedPreferencesRepositoryImpl();
    container = createContainer(
      overrides: [
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockPrefsRepository),
      ],
    );
    themeTextRepository = container.read(themeTextRepositoryProvider.notifier);
  });

  group('ThemeTextRepository', () {
    test('[正常系] loadSclale 最初に nullがloadされてもnormalがかえること', () async {
      // arrange
      when(mockPrefsRepository.fetch(any)).thenReturn(null);

      // act
      await themeTextRepository.loadScale();
      //assert
      expect(themeTextRepository.state, AppTextScale.normal);
    });
    test('[正常系] setScale', () async {
      // arrange
      when(mockPrefsRepository.save(any, any)).thenAnswer((_) async => true);
      // act

      await themeTextRepository.setScale(AppTextScale.large);
      // assert
      expect(themeTextRepository.state, AppTextScale.large);
      verify(mockPrefsRepository.save(any, AppTextScale.large.index)).called(1);
    });
  });
}
