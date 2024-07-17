// test/tts_repository_impl_test.dart

import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../helper/helper_test.mocks.dart';

void main() {
  late MockFlutterTts mockFlutterTts;
  late MockAppSettingInfoImpl mockAppSettingInfoRepository;
  late TtsRepositoryImpl ttsRepository;

  setUp(() {
    mockFlutterTts = MockFlutterTts();
    mockAppSettingInfoRepository = MockAppSettingInfoImpl();
    ttsRepository = TtsRepositoryImpl(mockFlutterTts,
        mockAppSettingInfoRepository, AppInstallType.koreanBeginner);
  });

  group('TtsRepositoryImpl', () {
    test('initializeTts should set language, pitch and speech rate', () async {
      await ttsRepository.initializeTts();

      verify(mockFlutterTts.setLanguage('ko-KR')).called(1);
      verify(mockFlutterTts.setPitch(1.0)).called(1);
      verify(mockFlutterTts.setSpeechRate(0.5)).called(1);
    });

    test('speak should call FlutterTts speak', () async {
      await ttsRepository.speak('Hello');

      verify(mockFlutterTts.speak('Hello')).called(1);
    });

    test('stop should call FlutterTts stop', () async {
      await ttsRepository.stop();

      verify(mockFlutterTts.stop()).called(1);
    });
  });
}
