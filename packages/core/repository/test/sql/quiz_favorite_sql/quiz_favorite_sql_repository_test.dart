import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core_repository/sql/quiz_favorite_sql/quiz_favorite_sql_repository.dart';
import 'package:sqflite/sqflite.dart';

import '../../helper/helper_test.mocks.dart';

void main() {
  late MockQuizFavoriteSql mockDatabase;
  late QuizFavoriteSqlRepositoryImpl repository;
  late Database mockDb;

  setUp(() {
    mockDatabase = MockQuizFavoriteSql();
    mockDb = MockDatabase();
    repository = QuizFavoriteSqlRepositoryImpl(mockDatabase);

    // データベースへのスタブを設定
    when(mockDatabase.db).thenAnswer((_) async => mockDb);
  });

  group('QuizFavoriteSqlRepositoryImpl', () {
    test('[正常系] insert', () async {
      // Arrange
      when(mockDb.insert(
        QuizFavoriteSql.table,
        {
          QuizFavoriteSql.columnWord: 'word',
          QuizFavoriteSql.columnAnswer: 'answer',
          QuizFavoriteSql.columnSentence: 'sentence',
          QuizFavoriteSql.columnTranslation: 'translation',
          QuizFavoriteSql.columnPronunciation: 'pronunciation',
          QuizFavoriteSql.columnTopicType: 'topicType',
        },
      )).thenAnswer((_) async => 1);

      when(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).thenAnswer((_) async => []);

      // Act
      final result = await repository.insert(
        'word',
        'answer',
        'sentence',
        'translation',
        'pronunciation',
        'topicType',
      );

      // Assert
      expect(result, 1);
      verify(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).called(1);
      verify(mockDb.insert(
        QuizFavoriteSql.table,
        {
          QuizFavoriteSql.columnWord: 'word',
          QuizFavoriteSql.columnAnswer: 'answer',
          QuizFavoriteSql.columnSentence: 'sentence',
          QuizFavoriteSql.columnTranslation: 'translation',
          QuizFavoriteSql.columnPronunciation: 'pronunciation',
          QuizFavoriteSql.columnTopicType: 'topicType',
        },
      )).called(1);
    });

    test('すでに単語が登録されている場合 insertされないこと', () async {
      // Arrange
      when(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).thenAnswer((_) async => [
            {QuizFavoriteSql.columnWord: 'word'}
          ]);

      // Act
      final result = await repository.insert(
        'word',
        'answer',
        'sentence',
        'translation',
        'pronunciation',
        'topicType',
      );

      // Assert
      expect(result, 0);
      verify(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).called(1);
      verifyNever(mockDb.insert(
        QuizFavoriteSql.table,
        {
          QuizFavoriteSql.columnWord: 'word',
          QuizFavoriteSql.columnAnswer: 'answer',
          QuizFavoriteSql.columnSentence: 'sentence',
          QuizFavoriteSql.columnTranslation: 'translation',
          QuizFavoriteSql.columnPronunciation: 'pronunciation',
          QuizFavoriteSql.columnTopicType: 'topicType',
        },
      ));
    });

    test('[正常系] delete', () async {
      // Arrange
      when(mockDb.delete(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).thenAnswer((_) async => 1);

      // Act
      final result = await repository.delete('word');

      // Assert
      expect(result, 1);
      verify(mockDb.delete(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: ['word'],
      )).called(1);
    });

    test('[正常系] getTopicWords', () async {
      // Arrange
      when(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnTopicType} = ?',
        whereArgs: ['topicType'],
      )).thenAnswer((_) async => [
            {QuizFavoriteSql.columnWord: 'word1'},
            {QuizFavoriteSql.columnWord: 'word2'},
          ]);

      // Act
      final result = await repository.getTopicWords('topicType');

      // Assert
      expect(result, ['word1', 'word2']);
      verify(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnTopicType} = ?',
        whereArgs: ['topicType'],
      )).called(1);
    });

    test('[正常系] getAllquizzes', () async {
      // Arrange
      when(mockDb.query(QuizFavoriteSql.table)).thenAnswer((_) async => [
            {
              QuizFavoriteSql.columnWord: 'word1',
              QuizFavoriteSql.columnAnswer: 'answer1',
              QuizFavoriteSql.columnSentence: 'sentence1',
              QuizFavoriteSql.columnTranslation: 'translation1',
              QuizFavoriteSql.columnPronunciation: 'pronunciation1',
            },
            {
              QuizFavoriteSql.columnWord: 'word2',
              QuizFavoriteSql.columnAnswer: 'answer2',
              QuizFavoriteSql.columnSentence: 'sentence2',
              QuizFavoriteSql.columnTranslation: 'translation2',
              QuizFavoriteSql.columnPronunciation: 'pronunciation2',
            },
          ]);

      // Act
      final result = await repository.getAllquizzes();

      // Assert
      expect(result.length, 2);
      expect(result[0].text, 'word1');
      expect(result[1].text, 'word2');
      verify(mockDb.query(QuizFavoriteSql.table)).called(1);
    });

    test(' データが空のとき[]をreturnすること', () async {
      // Arrange
      when(mockDb.query(QuizFavoriteSql.table)).thenAnswer((_) async => []);

      // Act
      final result = await repository.getAllquizzes();

      // Assert
      expect(result, []);
      verify(mockDb.query(QuizFavoriteSql.table)).called(1);
    });

    test('[正常系] getAllAnswers', () async {
      // Arrange
      when(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnTopicType} = ?',
        whereArgs: ['topicType'],
      )).thenAnswer((_) async => [
            {QuizFavoriteSql.columnAnswer: 'answer1'},
            {QuizFavoriteSql.columnAnswer: 'answer2'},
          ]);

      // Act
      final result = await repository.getAllAnswers('topicType');

      // Assert
      expect(result, ['answer1', 'answer2']);
      verify(mockDb.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnTopicType} = ?',
        whereArgs: ['topicType'],
      )).called(1);
    });
  });
}
