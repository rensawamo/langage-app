import 'package:core_repository/secure_storage/secure_storage_repository.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
@GenerateNiceMocks([MockSpec<SharedPreferencesRepositoryImpl>()])
@GenerateNiceMocks([MockSpec<FlutterSecureStorage>()])
@GenerateNiceMocks([MockSpec<SecureStorageRepositoryImpl>()])

void main() {}