import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/secure_storage/secure_storage_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import '../helper/helper_test.mocks.dart';

void main() {
  late MockFlutterSecureStorage mockStorage;
  late SecureStorageRepositoryImpl repository;

  const key = AppPrefsKey.configModeType;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    repository = SecureStorageRepositoryImpl(mockStorage);
  });

  group('save', () {
    test('should save an int', () async {
      final value = 123;
      // arrange
      when(mockStorage.write(key: key.value, value: value.toString()))
          .thenAnswer((_) async {});
      // act
      await repository.save(key, value);
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
      await repository.save(key, value);
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
      await repository.save(key, value);
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
      await repository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value)).called(1);
    });

    test('should save a List<String>', () async {
      final value = ['one', 'two', 'three'];
      // arrange
      when(mockStorage.write(key: key.value, value: value.join(',')))
          .thenAnswer((_) async {});
      // act
      await repository.save(key, value);
      // assert
      verify(mockStorage.write(key: key.value, value: value.join(',')))
          .called(1);
    });
  });

  group('fetch', () {
    test('should fetch an int', () async {
      final value = '123';
      //  arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await repository.fetch<int>(key);
      // assert
      expect(result, 123);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a double', () async {
      final value = '123.45';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await repository.fetch<double>(key);
      // assert
      expect(result, 123.45);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a bool', () async {
      final value = 'true';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await repository.fetch<bool>(key);
      // assert
      expect(result, true);
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a String', () async {
      final value = 'test';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await repository.fetch<String>(key);
      // assert
      expect(result, 'test');
      verify(mockStorage.read(key: key.value)).called(1);
    });

    test('should fetch a List<String>', () async {
      final value = 'one,two,three';
      // arrange
      when(mockStorage.read(key: key.value)).thenAnswer((_) async => value);
      // act
      final result = await repository.fetch<List<String>>(key);
      // assert
      expect(result, ['one', 'two', 'three']);
      verify(mockStorage.read(key: key.value)).called(1);
    });
  });

  group('remove', () {
    test('should remove a value', () async {
      // arrange
      when(mockStorage.delete(key: key.value)).thenAnswer((_) async {});
      // act
      await repository.remove(key);
      // assert
      verify(mockStorage.delete(key: key.value)).called(1);
    });
  });
}
