import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'flutter_tts_repository.g.dart';

/// [TtsRepository]のProvider
/// [AppInstallType] を引数に取り、言語を設定する
/// [TtsRepositoryImpl]を返す
@Riverpod(keepAlive: true)
TtsRepositoryImpl ttsRepository(
  TtsRepositoryRef ref,
) {
  final flutterTts = FlutterTts();
  final appInstallType = ref.read(appSettingInfoProvider);
  return TtsRepositoryImpl(flutterTts, appSettingInfoProvider, appInstallType);
}

/// [TtsRepository] の具象クラス
class TtsRepositoryImpl implements TtsRepository {
  final FlutterTts _flutterTts;
  final appSettingInfoProvider;
  final AppInstallType appInstallType;

  TtsRepositoryImpl(
      this._flutterTts, this.appSettingInfoProvider, this.appInstallType);

  @override
  Future<void> initializeTts(AppInstallType appInstallType) async {
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

/// TTSのリポジトリ
/// TTSの初期化、発話、停止を行う
abstract class TtsRepository {
  /// TTSの初期化
  Future<void> initializeTts(AppInstallType appInstallType);
  // TTSの発話
  Future<void> speak(String text);
  // TTSの停止
  Future<void> stop();
}
