import 'package:core_repository/repository.dart';
import 'package:core_utility/utility.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ko_beginner/app.dart';
import 'package:ko_beginner/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // DI 合成起点
  // SharedPreferences の初期化
  final sharedPreferences = await SharedPreferences.getInstance();
  // SecureStorage の初期化
  final flutterSecureStorage = FlutterSecureStorage();
  final flutterTts = FlutterTts();

  /// Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //向き指定
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  /// Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        flutterSecureStorageProvider.overrideWithValue(flutterSecureStorage),
        flutterTtsProvider.overrideWithValue(flutterTts),
      ],
      observers: [ProviderLogger()],
      child: const App(),
    ),
  );
}
