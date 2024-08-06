import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/secure_storage/secure_storage_repository.dart';
import 'package:core_repository/shared_preferences/shared_preference_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

@GenerateNiceMocks([MockSpec<SharedPreferences>()])
@GenerateNiceMocks([MockSpec<SharedPreferencesRepositoryImpl>()])
@GenerateNiceMocks([MockSpec<SharedPreferencesRepository>()])
@GenerateNiceMocks([MockSpec<FlutterSecureStorage>()])
@GenerateNiceMocks([MockSpec<SecureStorageRepositoryImpl>()])
@GenerateNiceMocks([MockSpec<AppSettingInfo>()])
@GenerateNiceMocks([MockSpec<FlutterTts>()])
@GenerateNiceMocks([MockSpec<Database>()])
@GenerateNiceMocks([MockSpec<QuizFavoriteSql>()])
@GenerateNiceMocks([MockSpec<TtsRepositoryImpl>()])



void main() {}
