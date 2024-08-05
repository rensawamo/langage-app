import 'package:core_foundation/foundation.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';
import 'package:core_repository/secure_storage/secure_storage_repository.dart';

import '../helper/helper_test.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockFlutterSecureStorage mockStorage;
  late SecureStorageRepository secureStorageRepository;
  const key = AppPrefsKey.configModeType;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    container = createContainer(
      overrides: [
        flutterSecureStorageProvider.overrideWithValue(mockStorage),
      ],
    );
    secureStorageRepository = container.read(secureStorageRepositoryProvider);
  });
  group('[正常系] save', () {
    test('should save an int', () async {
      final value = 123;
      // arrange
      when(mockStorage.write(key: key.value, value: value.toString()))
          .thenAnswer((_) async {});
      // act
       await secureStorageRepository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value.toString()))
          .called(1);
    });

    test('should save a double', () async {
      final value = 123.45;
      // arrange
      when(mockStorage.write(key: key.value, value: value.toString()))
          .thenAnswer((_) async {});
      // act
      await secureStorageRepository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value.toString()))
          .called(1);
    });

    test('should save a bool', () async {
      final value = true;
      // arrange
      when(mockStorage.write(key: key.value, value: value.toString()))
          .thenAnswer((_) async {});
      // act
      await secureStorageRepository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value.toString()))
          .called(1);
    });

    test('should save a String', () async {
      final value = 'test';
      // arrange
      when(mockStorage.write(key: key.value, value: value))
          .thenAnswer((_) async {});
      // act
      await secureStorageRepository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value)).called(1);
    });

    test('should save a List<String>', () async {
      final value = ['one', 'two', 'three'];
      // arrange
      when(mockStorage.write(key: key.value, value: value.join(',')))
          .thenAnswer((_) async {});
      // act
      await secureStorageRepository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value.join(',')))
          .called(1);
    });
  });

  group('[正常系] fetch', () {
    test('should fetch an int', () async {
      final value = '123';
      //  arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await secureStorageRepository.fetch<int>(key);
      // assert
      expect(result, 123);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a double', () async {
      final value = '123.45';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await secureStorageRepository.fetch<double>(key);
      // assert
      expect(result, 123.45);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a bool', () async {
      final value = 'true';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await secureStorageRepository.fetch<bool>(key);
      // assert
      expect(result, true);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a String', () async {
      final value = 'test';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await secureStorageRepository.fetch<String>(key);
      // assert
      expect(result, 'test');
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a List<String>', () async {
      final value = 'one,two,three';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await secureStorageRepository.fetch<List<String>>(key);
      // assert
      expect(result, ['one', 'two', 'three']);
      verify(mockStorage.read(key: key.value)).called(1);
    });
  });

  group('[正常系] remove', () {
    test('should remove a value', () async {
      // arrange
      when(mockStorage.delete(key: key.value)).thenAnswer((_) async {});
      // act
      await secureStorageRepository.remove(key);
      // assert
      verify(mockStorage.delete(key: key.value)).called(1);
    });
  });
}
