import 'package:core_model/quiz/quiz_model.dart';
import 'package:test/test.dart';

void main() {
  group('Quiz Model Test', () {
    test('fromjson と tojsonが正しく機能すること', () {
      // OptionのJSONテスト
      const optionJson = {
        'text': 'option text',
        'isCorrect': true,
      };
      final option = Option.fromJson(optionJson);
      expect(option.text, 'option text');
      expect(option.isCorrect, true);
      expect(option.toJson(), optionJson);

      // QuizのJSONテスト
      const quizJson = {
        'text': 'quiz text',
        'answer': 'answer text',
        'sentence': 'example sentence',
        'translation': 'translated sentence',
        'pronunciation': 'pronunciation',
        'options': [
          {
            'text': 'option text',
            'isCorrect': true,
          },
          {
            'text': 'option text 2',
            'isCorrect': false,
          },
        ],
        'isLocked': false,
        'selectedOption': null,
      };

      final quiz = Quiz.fromJson(quizJson);
      expect(quiz.text, 'quiz text');
      expect(quiz.answer, 'answer text');
      expect(quiz.sentence, 'example sentence');
      expect(quiz.translation, 'translated sentence');
      expect(quiz.pronunciation, 'pronunciation');
      expect(quiz.options.length, 2);
      expect(quiz.options[0].text, 'option text');
      expect(quiz.options[0].isCorrect, true);
      expect(quiz.options[1].text, 'option text 2');
      expect(quiz.options[1].isCorrect, false);
      expect(quiz.isLocked, false);
      expect(quiz.selectedOption, null);
    });

    test('Quiz のdefalt値テスト', () {
      const quiz = Quiz(
        text: 'quiz text',
        sentence: 'example sentence',
        translation: 'translated sentence',
        pronunciation: 'pronunciation',
        options: [Option(text: 'option text')],
      );
      expect(quiz.isLocked, false);
      expect(quiz.selectedOption, null);
    });
  });
}
