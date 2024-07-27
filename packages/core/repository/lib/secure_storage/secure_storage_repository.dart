import 'package:core_foundation/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_repository.g.dart';

/// [FlutterSecureStorage] へのアクセスを提供する Provider
/// 合成起点でDI されてないとエラーになる
@Riverpod(keepAlive: true)
FlutterSecureStorage flutterSecureStorage(
  FlutterSecureStorageRef ref,
) {
  throw UnimplementedError();
}

/// [SecureStorageRepository] を提供する Provider
@Riverpod(keepAlive: true)
SecureStorageRepository secureStorageRepository(
  SecureStorageRepositoryRef ref,
) {
  final storage = ref.watch(flutterSecureStorageProvider);
  return SecureStorageRepositoryImpl(storage);
}

/// [SecureStorageRepository] の具象クラス
class SecureStorageRepositoryImpl implements SecureStorageRepository {
  SecureStorageRepositoryImpl(this._storage);

  final FlutterSecureStorage _storage;

  /// 保存
  ///
  /// T: 保存する型
  Future<void> save<T>(AppPrefsKey key, T value) async {
    if (value is int || value is double || value is bool || value is String) {
      await _storage.write(key: key.value, value: value.toString());
      return;
    }
    if (value is List<String>) {
      await _storage.write(key: key.value, value: value.join(','));
      return;
    }
    throw UnsupportedError('Not support \'$value\'');
  }

  /// 取得
  ///
  /// T: 取得する型
  Future<T?> fetch<T>(AppPrefsKey key) async {
    String? stringValue = await _storage.read(key: key.value);
    if (stringValue == null) return null;

    if (T == int) {
      return int.tryParse(stringValue) as T?;
    }
    if (T == double) {
      return double.tryParse(stringValue) as T?;
    }
    if (T == bool) {
      return (stringValue.toLowerCase() == 'true') as T?;
    }
    if (T == String) {
      return stringValue as T?;
    }
    if (T == List<String>) {
      return stringValue.split(',') as T?;
    }
    throw UnsupportedError('Not support \'$T\'');
  }

  /// 削除
  Future<void> remove(AppPrefsKey key) => _storage.delete(key: key.value);
}

// [FlutterSecureStorage] へのアクセスを提供する抽象クラス
abstract class SecureStorageRepository {
  // secure storage に保存
  Future<void> save<T>(AppPrefsKey key, T value);
  // secure storage から取得
  Future<T?> fetch<T>(AppPrefsKey key);
  // secure storage から削除
  Future<void> remove(AppPrefsKey key);
}
