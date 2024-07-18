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

  setUp(() {
    mockPrefsRepository = MockSharedPreferencesRepositoryImpl();
    container = createContainer(
      overrides: [
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockPrefsRepository),
      ],
    );
  });

  group('ThemeTextRepository', () {
    test('最初に nullがloadされてもnormalがかえること', () async {
      // arrange
      when(mockPrefsRepository.fetch(any)).thenReturn(null);

      // act
      final themeTextNotifier =
          container.read(themeTextRepositoryProvider.notifier);
      await themeTextNotifier.loadScale();
      //assert
      expect(themeTextNotifier.state, AppTextScale.normal);
    });
    test('sharedpreferenceがよばれてしっかり保存されること', () async {
      // arrange
      when(mockPrefsRepository.save(any, any)).thenAnswer((_) async => true);
      // act
      final themeTextNotifier =
          container.read(themeTextRepositoryProvider.notifier);
      await themeTextNotifier.setScale(AppTextScale.large);
      // assert
      expect(themeTextNotifier.state, AppTextScale.large);
      verify(mockPrefsRepository.save(any, AppTextScale.large.index)).called(1);
    });
  });
}