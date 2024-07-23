// test/app_setting_info_impl_test.dart

import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:core_foundation/foundation.dart';

import '../helper/helper_test.mocks.dart';

void main() {
  late MockSharedPreferencesRepositoryImpl mockPrefsRepository;
  late AppSettingInfoImpl appSettingInfo;
  late ProviderContainer container;

  setUp(() {
    mockPrefsRepository = MockSharedPreferencesRepositoryImpl();
    container = createContainer(
      overrides: [
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockPrefsRepository),
      ],
    );
    appSettingInfo = container.read(appSettingInfoProvider.notifier);
  });

  group('AppSettingInfoImpl', () {
    test('デフォルトの値が設定されていないときは noneを返すこと', () async {
      // arrange
      when(mockPrefsRepository.fetch<AppInstallType>(any)).thenReturn(null);
      // act
      await appSettingInfo.setup();
      // assert
      expect(container.read(appSettingInfoProvider), AppInstallType.none);
    });

    test(
        'changeAppInstalltypeで shardpreferencerepositoryのsaveが一度呼び出され、値が保存されていること',
        () async {
      //   arrange
      when(mockPrefsRepository.save(any, AppInstallType.koreanBeginner.index))
          .thenAnswer((_) async => true);
      // act
      await appSettingInfo.changeAppInstallType(AppInstallType.koreanBeginner);
      // assert
      expect(container.read(appSettingInfoProvider),
          AppInstallType.koreanBeginner);
      verify(mockPrefsRepository.save(any, AppInstallType.koreanBeginner.index))
          .called(1);
    });
  });
}
