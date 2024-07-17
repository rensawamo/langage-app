import 'package:core_foundation/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preference_repository.g.dart';

@Riverpod(keepAlive: true)
SharedPreferencesRepositoryImpl sharedPreferencesRepository(
  SharedPreferencesRepositoryRef ref,
) {
  //  error: The argument type 'SharedPreferencesRepositoryRef'
  // can't be assigned to the parameter type 'ProviderReference'.
  throw UnimplementedError();
}

class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository {
  SharedPreferencesRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  /// 保存
  ///
  /// T: 保存する型
  Future<bool> save<T>(AppPrefsKey key, T value) async {
    if (value is int) {
      return _prefs.setInt(key.value, value);
    }
    if (value is double) {
      return _prefs.setDouble(key.value, value);
    }
    if (value is bool) {
      return _prefs.setBool(key.value, value);
    }
    if (value is String) {
      return _prefs.setString(key.value, value);
    }
    if (value is List<String>) {
      return _prefs.setStringList(key.value, value);
    }
    throw UnsupportedError('Not support \'$value\'');
  }

  /// 取得
  ///
  /// T: 取得する型
  T? fetch<T>(AppPrefsKey key) {
    if (T == int) {
      return _prefs.getInt(key.value) as T?;
    }
    if (T == double) {
      return _prefs.getDouble(key.value) as T?;
    }
    if (T == bool) {
      return _prefs.getBool(key.value) as T?;
    }
    if (T == String) {
      return _prefs.getString(key.value) as T?;
    }
    if (T == List<String>) {
      return _prefs.getStringList(key.value) as T?;
    }
    throw UnsupportedError('Not support \'$T\'');
  }

  /// 削除
  Future<bool> remove(AppPrefsKey key) => _prefs.remove(key.value);
}

// SharedPreferences へのアクセスを提供するリポジトリ
abstract class SharedPreferencesRepository {
  // SharedPreferences に保存
  Future<bool> save<T>(AppPrefsKey key, T value);
  // SharedPreferences から取得
  T? fetch<T>(AppPrefsKey key);
  // SharedPreferences から削除
  Future<bool> remove(AppPrefsKey key);
}
