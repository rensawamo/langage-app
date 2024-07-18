import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'flutter_tts_repository.g.dart';

@Riverpod(keepAlive: true)
TtsRepositoryImpl ttsRepository(
  TtsRepositoryRef ref,
) {
  final flutterTts = FlutterTts();
  final appInstallType = ref.read(appSettingInfoProvider);
  return TtsRepositoryImpl(flutterTts, appSettingInfoProvider, appInstallType);
}

class TtsRepositoryImpl implements TtsRepository {
  final FlutterTts _flutterTts;
  final appSettingInfoProvider;
  final AppInstallType appInstallType;

  TtsRepositoryImpl(
      this._flutterTts, this.appSettingInfoProvider, this.appInstallType);

  @override
  Future<void> initializeTts() async {
    await _flutterTts.setLanguage(appInstallType.ftsSetting);
    await _flutterTts.setPitch(1.0);
    await _flutterTts.setSpeechRate(0.5);
  }

  @override
  Future<void> speak(String text) async {
    await _flutterTts.speak(text);
  }

  @override
  Future<void> stop() async {
    await _flutterTts.stop();
  }
}

/// アプリの言語発声の設定を行う リポジトリ
abstract class TtsRepository {
  /// TTSの初期化
  Future<void> initializeTts();
  // TTSの発話
  Future<void> speak(String text);
  // TTSの停止
  Future<void> stop();
}