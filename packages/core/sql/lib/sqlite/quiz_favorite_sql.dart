import 'package:core_dao/dao/quiz_get_all/quiz_get_all_response.dart';
import 'package:core_utility/utility.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class QuizFavoriteSql {
  static final _databaseName = "QuizDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'quiz';
  static final columnWord = 'word';
  static final columnAnswer = 'answer';
  static final columnSentence = 'sentence';
  static final columnTranslation = 'translation';
  static final columnPronunciation = 'pronunciation';
  static final columnTopicType = 'topicType';

  // Singleton class
  QuizFavoriteSql._privateConstructor();
  static final QuizFavoriteSql instance = QuizFavoriteSql._privateConstructor();

  // Database reference
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Open the database
  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  static Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnWord TEXT PRIMARY KEY,$columnAnswer TEXT, $columnTopicType TEXT, $columnSentence TEXT, $columnTranslation TEXT, $columnPronunciation TEXT
          )
          ''');
  }

  // Insert a word into the database
  static Future<int> insert(
    String word,
    String answer,
    String sentence,
    String translation,
    String pronunciation,
    String topicType,
  ) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> existingWord =
        await db.query(table, where: '$columnWord = ?', whereArgs: [word]);
    if (existingWord.isEmpty) {
      logger.d(
          'insert word: $word, answer: $answer, sentence: $sentence, translation: $translation, pronunciation: $pronunciation, topicType: $topicType');

      return await db.insert(table, {
        columnWord: word,
        columnAnswer: answer,
        columnSentence: sentence,
        columnTranslation: translation,
        columnPronunciation: pronunciation,
        columnTopicType: topicType,
      });
    } else {
      logger.d('word already exists');
      return 0;
    }
  }

  // Delete a word from the database
  static Future<int> delete(String word) async {
    logger.d('delete word: $word');
    Database db = await instance.database;
    return await db.delete(table, where: '$columnWord = ? ', whereArgs: [
      word,
    ]);
  }

  static Future<bool> isFavorite(
    String word,
    String topicType,
  ) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table,
        where: '$columnWord = ? AND $columnTopicType = ? ',
        whereArgs: [
          word,
          topicType,
        ]);
    return result.isNotEmpty;
  }

  // トピックに対する全ての単語を取得
  static Future<List<String>> getTopicWords(
    String topicType,
  ) async {
    logger.d('getAllWords topicType: $topicType');
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db
        .query(table, where: '$columnTopicType = ?', whereArgs: [topicType]);

    return result.isNotEmpty
        ? result.map((e) => e[columnWord] as String).toList()
        : [];
  }

  // 保存されている全ての単語を取得
  static Future<List<Quiz>> getAllquizzes() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table);
    logger.d('getAllquizzes result: $result');
    return result.isNotEmpty
        ? result
            .map((e) => Quiz(
                  text: e[columnWord] as String,
                  answer: e[columnAnswer] as String,
                  sentence: e[columnSentence] as String,
                  translation: e[columnTranslation] as String,
                  pronunciation: e[columnPronunciation] as String,
                  options: [],
                ))
            .toList()
        : [];
  }

  static Future<List<String>> getAllAnswers(
    String topicType,
  ) async {
    logger.d('getAllAnswers topicType: $topicType');
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db
        .query(table, where: '$columnTopicType = ?', whereArgs: [topicType]);

    return result.isNotEmpty
        ? result.map((e) => e[columnAnswer] as String).toList()
        : [];
  }
}
