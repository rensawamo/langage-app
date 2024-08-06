  // test/tts_repository_impl_test.dart
import 'package:core_foundation/foundation.dart';
import 'package:core_repository/app_setting_info/app_setting_info_repository.dart';
import 'package:core_repository/flutter_tts/flutter_tts_repository.dart';
import 'package:core_repository/repository.dart';
import 'package:core_test_util/test_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../helper/helper_test.mocks.dart';

void main() {
  late MockFlutterTts mockFlutterTts;
  late MockSharedPreferencesRepository mockSharedPreferencesRepository;
  late TtsRepository ttsRepository;
  late ProviderContainer container;

  setUp(() {
    mockFlutterTts = MockFlutterTts();
    mockSharedPreferencesRepository = MockSharedPreferencesRepository();
    container = createContainer(
      overrides: [
        appSettingInfoProvider.overrideWith(
            (ref) => AppSettingInfo(mockSharedPreferencesRepository)),
        flutterTtsProvider.overrideWithValue(mockFlutterTts),
        sharedPreferencesRepositoryProvider
            .overrideWithValue(mockSharedPreferencesRepository),
      ],
    );
    ttsRepository = container.read(ttsRepositoryProvider);
  });

  group('ttsRepositoryProvider', () {
    test('[正常系]initializeTts ', () async {
      // act
      await ttsRepository.initializeTts(AppInstallType.koreanBeginner);
      // assert
      verify(mockFlutterTts.setLanguage(any)).called(1);
      verify(mockFlutterTts.setPitch(1.0)).called(1);
      verify(mockFlutterTts.setSpeechRate(0.5)).called(1);
    });

    test('[正常系] ttsReposiryにより Flutterttsのspeakが呼び出されること', () async {
      // act
      await ttsRepository.speak('Hello');
      // assert
      verify(mockFlutterTts.speak('Hello')).called(1);
    });

    test('[正常系] stop', () async {
      // act
      await ttsRepository.stop();
      // assert
      verify(mockFlutterTts.stop()).called(1);
    });
  });
}
