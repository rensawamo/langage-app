import 'package:core_model/quiz/quiz_model.dart';
import 'package:core_repository/repository.dart';
import 'package:core_utility/utility.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_favorite_sql_repository.g.dart';

@Riverpod(keepAlive: true)
QuizFavoriteSqlRepository quizFavoriteSqlRepository(
  QuizFavoriteSqlRepositoryRef ref,
) {
  return QuizFavoriteSqlRepositoryImpl(ref.read(quizFavoriteSqlProvider));
}

class QuizFavoriteSqlRepositoryImpl implements QuizFavoriteSqlRepository {
  QuizFavoriteSqlRepositoryImpl(this._database);

  final QuizFavoriteSql _database;

  @override
  Future<int> insert(
    String word,
    String answer,
    String sentence,
    String translation,
    String pronunciation,
    String topicType,
  ) async {
    final db = await _database.db;
    List<Map<String, dynamic>> existingWord = await db.query(
        QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?',
        whereArgs: [word]);
    if (existingWord.isEmpty) {
      return await db.insert(QuizFavoriteSql.table, {
        QuizFavoriteSql.columnWord: word,
        QuizFavoriteSql.columnAnswer: answer,
        QuizFavoriteSql.columnSentence: sentence,
        QuizFavoriteSql.columnTranslation: translation,
        QuizFavoriteSql.columnPronunciation: pronunciation,
        QuizFavoriteSql.columnTopicType: topicType,
      });
    } else {
      logger.d('word already exists');
      return 0;
    }
  }

  @override
  Future<int> delete(String word) async {
    final db = await _database.db;
    return await db.delete(QuizFavoriteSql.table,
        where: '${QuizFavoriteSql.columnWord} = ?', whereArgs: [word]);
  }

  @override
  Future<List<String>> getTopicWords(String topicType) async {
    final db = await _database.db;
    List<Map<String, dynamic>> result = await db.query(
      QuizFavoriteSql.table,
      where: '${QuizFavoriteSql.columnTopicType} = ?',
      whereArgs: [topicType],
    );
    return result.isNotEmpty
        ? result.map((e) => e[QuizFavoriteSql.columnWord] as String).toList()
        : [];
  }

  @override
  Future<List<Quiz>> getAllquizzes() async {
    final db = await _database.db;
    List<Map<String, dynamic>> result = await db.query(QuizFavoriteSql.table);
    return result.isNotEmpty
        ? result
            .map((e) => Quiz(
                  text: e[QuizFavoriteSql.columnWord] as String,
                  answer: e[QuizFavoriteSql.columnAnswer] as String,
                  sentence: e[QuizFavoriteSql.columnSentence] as String,
                  translation: e[QuizFavoriteSql.columnTranslation] as String,
                  pronunciation:
                      e[QuizFavoriteSql.columnPronunciation] as String,
                  options: [],
                ))
            .toList()
        : [];
  }

  @override
  Future<List<String>> getAllAnswers(String topicType) async {
    final db = await _database.db;
    List<Map<String, dynamic>> result = await db.query(
      QuizFavoriteSql.table,
      where: '${QuizFavoriteSql.columnTopicType} = ?',
      whereArgs: [topicType],
    );
    return result.isNotEmpty
        ? result.map((e) => e[QuizFavoriteSql.columnAnswer] as String).toList()
        : [];
  }
}

abstract class QuizFavoriteSqlRepository {
  // お気に入りに追加
  Future<int> insert(
    String word,
    String answer,
    String sentence,
    String translation,
    String pronunciation,
    String topicType,
  );
  // お気に入りから削除
  Future<int> delete(String word);
  // お気に入りの単語を取得
  Future<List<String>> getTopicWords(String topicType);
  // お気に入りの問題を全て取得
  Future<List<Quiz>> getAllquizzes();
  // お気に入りの問題の答えを全て取得
  Future<List<String>> getAllAnswers(String topicType);
}
