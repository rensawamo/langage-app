import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../helper/helper_test.mocks.dart';

void main() {
  group('AppSettingInfo Tests', () {
    late MockSharedPreferencesRepositoryImpl mockRepository;
    late AppSettingInfo appSettingInfo;
    late ProviderContainer container;

    setUp(() {
      mockRepository = MockSharedPreferencesRepositoryImpl();
      container = createContainer(
        overrides: [
          sharedPreferencesRepositoryProvider.overrideWithValue(mockRepository),
        ],
      );
      appSettingInfo = container.read(appSettingInfoProvider.notifier);
    });
    group('appSettingInfoProvider', () {
      test('[正常系] initilal ', () {
        // arrange
        when(mockRepository.fetch<int>(any)).thenReturn(null);
        // act
        final state = appSettingInfo.state;
        // assert
        expect(state, AppInstallType.none);
      });

      test('[正常系] setup', () async {
        // arrange
        when(mockRepository.fetch<int>(any))
            .thenReturn(AppInstallType.koreanBeginner.index);
        // act
        await appSettingInfo.setup();
        // assert
        expect(appSettingInfo.state, AppInstallType.koreanBeginner);
      });

      test('[正常系] changeAppInstallType', () async {
        // arrange
        when(mockRepository.save<int>(any, any)).thenAnswer((_) async => true);
        // act
        await appSettingInfo
            .changeAppInstallType(AppInstallType.koreanBeginner);
        // assert
        expect(appSettingInfo.state, AppInstallType.koreanBeginner);
        verify(mockRepository.save<int>(
                any, AppInstallType.koreanBeginner.index))
            .called(1);
      });
    });
  });
}
