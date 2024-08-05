import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helper/helper_test.mocks.dart';

void main() {
  /// テストで利用する定数を定義
  const key = AppPrefsKey.configModeType;
  late ProviderContainer container;
  late MockSharedPreferences mockSharedPreferences;
  late SharedPreferencesRepository sharedPreferencesRepository;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    container = createContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(mockSharedPreferences),
      ],
    );
    sharedPreferencesRepository =
        container.read(sharedPreferencesRepositoryProvider);
  });

  test(
    '[正常系] save サポートされている型でデータが保存できること',
    () async {
      // arrange
      /// Mockにデータをセットする
      when(
        mockSharedPreferences.setString(key.value, any),
      ).thenAnswer((_) async => true);
      when(
        mockSharedPreferences.setStringList(key.value, any),
      ).thenAnswer((_) async => true);
      when(
        mockSharedPreferences.setInt(key.value, any),
      ).thenAnswer((_) async => true);
      when(
        mockSharedPreferences.setDouble(key.value, any),
      ).thenAnswer((_) async => true);
      when(
        mockSharedPreferences.setBool(key.value, any),
      ).thenAnswer((_) async => true);

      // act
      /// テスト実施

      final results = await [
        sharedPreferencesRepository.save<String>(key, '0'),
        sharedPreferencesRepository.save<List<String>>(key, ['0', '1']),
        sharedPreferencesRepository.save<int>(key, 0),
        sharedPreferencesRepository.save<double>(key, 0.1),
        sharedPreferencesRepository.save<bool>(key, true),
      ].wait;

      // assert
      for (final element in results) {
        expect(element, isTrue);
      }

      /// テスト結果を検証 注入したMockの関数が1回呼ばれるか
      verify(mockSharedPreferences.setString(key.value, '0')).called(1);
      verify(mockSharedPreferences.setStringList(key.value, ['0', '1']))
          .called(1);
      verify(mockSharedPreferences.setInt(key.value, 0)).called(1);
      verify(mockSharedPreferences.setDouble(key.value, 0.1)).called(1);
      verify(mockSharedPreferences.setBool(key.value, true)).called(1);
    },
  );

  test(
    '[正常系] fetch サポートされている型でデータが取得できること',
    () async {
      /// arrange
      when(
        mockSharedPreferences.getString(key.value),
      ).thenAnswer((_) => '0');
      when(
        mockSharedPreferences.getStringList(key.value),
      ).thenAnswer((_) => ['0', '1']);
      when(
        mockSharedPreferences.getInt(key.value),
      ).thenAnswer((_) => 0);
      when(
        mockSharedPreferences.getDouble(key.value),
      ).thenAnswer((_) => 0.1);
      when(
        mockSharedPreferences.getBool(key.value),
      ).thenAnswer((_) => true);

      /// act
      /// テスト実施

      /// assert
      expect(sharedPreferencesRepository.fetch<String>(key), '0');
      expect(sharedPreferencesRepository.fetch<List<String>>(key), ['0', '1']);
      expect(sharedPreferencesRepository.fetch<int>(key), 0);
      expect(sharedPreferencesRepository.fetch<double>(key), 0.1);
      expect(sharedPreferencesRepository.fetch<bool>(key), true);

      /// 注入したMockの関数が1回呼ばれているか
      verify(mockSharedPreferences.getString(key.value)).called(1);
      verify(mockSharedPreferences.getStringList(key.value)).called(1);
      verify(mockSharedPreferences.getInt(key.value)).called(1);
      verify(mockSharedPreferences.getDouble(key.value)).called(1);
      verify(mockSharedPreferences.getBool(key.value)).called(1);
    },
  );


  test(["[正常系] remove "], () async {
    // arrange
    when(mockSharedPreferences.remove(key.value)).thenAnswer((_) async => true);

    // act
    final result = await sharedPreferencesRepository.remove(key);

    // assert
    expect(result, isTrue);
    verify(mockSharedPreferences.remove(key.value)).called(1);
  });

  test("sharedPreferencesRepository", () {
    //arrange

    // act
    final result = sharedPreferencesRepositoryProvider.read(container);

    // assert
    expect(result, isA<SharedPreferencesRepository>());
  });
}
