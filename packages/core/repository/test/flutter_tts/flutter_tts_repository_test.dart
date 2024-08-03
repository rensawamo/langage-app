// test/tts_repository_impl_test.dart
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../helper/helper_test.mocks.dart';

void main() {
  late MockFlutterTts mockFlutterTts;
  late MockAppSettingInfo mockAppSettingInfoRepository;
  late TtsRepositoryImpl ttsRepository;

  setUp(() {
    mockFlutterTts = MockFlutterTts();
    mockAppSettingInfoRepository = MockAppSettingInfo();
    ttsRepository = TtsRepositoryImpl(mockFlutterTts,
        mockAppSettingInfoRepository, AppInstallType.koreanBeginner);
  });

  group('TtsRepositoryImpl', () {
    test('初期化時に正しく言語情報がセットされること', () async {
      await ttsRepository.initializeTts(AppInstallType.koreanBeginner);

      verify(mockFlutterTts.setLanguage(any)).called(1);
      verify(mockFlutterTts.setPitch(1.0)).called(1);
      verify(mockFlutterTts.setSpeechRate(0.5)).called(1);
    });

    test('[正常系] ttsReposiryにより Flutterttsのspeakが呼び出されること', () async {
      await ttsRepository.speak('Hello');

      verify(mockFlutterTts.speak('Hello')).called(1);
    });

    test('[正常系] stop', () async {
      await ttsRepository.stop();

      verify(mockFlutterTts.stop()).called(1);
    });
  });
}
