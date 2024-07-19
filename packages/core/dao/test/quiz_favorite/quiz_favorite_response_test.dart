import 'package:core_dao/dao/quiz_favorite/quiz_favorite_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuizFavoriteResponse', () {
    test('fromJson should create a valid QuizFavoriteResponse', () {
      final json = {
        'texts': ['text1', 'text2', 'text3'],
        'answers': ['answer1', 'answer2', 'answer3'],
      };

      final response = QuizFavoriteResponse.fromJson(json);

      expect(response.texts, ['text1', 'text2', 'text3']);
      expect(response.answers, ['answer1', 'answer2', 'answer3']);
    });

    test('toJson should return a valid json representation', () {
      final response = QuizFavoriteResponse(
        texts: ['text1', 'text2', 'text3'],
        answers: ['answer1', 'answer2', 'answer3'],
      );

      final json = response.toJson();

      expect(json, {
        'texts': ['text1', 'text2', 'text3'],
        'answers': ['answer1', 'answer2', 'answer3'],
      });
    });
  });
}
