import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class QuizFavoriteSql {
  static final _databaseName = "QuizDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'quiz';
  static final columnWord = 'word';
  static final columnAnswer = 'answer';
  static final columnTopicType = 'topicType';
  static final columnAppInstallType = 'appInstallType';

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
            $columnWord TEXT PRIMARY KEY,$columnAnswer TEXT, $columnTopicType TEXT, $columnAppInstallType TEXT
          )
          ''');
  }

  // Insert a word into the database
  static Future<int> insert(String word, String answer, String topicType,
      String appInstallType) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> existingWord = await db.query(table,
        where: '$columnWord = ?  AND $columnAppInstallType = ? ',
        whereArgs: [word, appInstallType]);
    if (existingWord.isEmpty) {
      print('insert word: $word');
      return await db.insert(table, {
        columnWord: word,
        columnAnswer: answer,
        columnTopicType: topicType,
        columnAppInstallType: appInstallType
      });
    } else {
      print('word already exists');
      return 0;
    }
  }

  // Delete a word from the database
  static Future<int> delete(
      String word, String topicType, String appInstallType) async {
    print(word);
    Database db = await instance.database;
    return await db.delete(table,
        where:
            '$columnWord = ? AND $columnTopicType = ? AND $columnAppInstallType = ?',
        whereArgs: [word, topicType, appInstallType]);
  }

  static Future<bool> isFavorite(
      String word, String topicType, String appInstallType) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table,
        where:
            '$columnWord = ? AND $columnTopicType = ? AND $columnAppInstallType = ?',
        whereArgs: [word, topicType, appInstallType]);
    return result.isNotEmpty;
  }

  /// インストールされているアプリの種類
  /// 選択トピックのタイトルに応じて お気に入りの語句を取得する
  static Future<List<String>> getAllWords(
      String topicType, String appInstallType) async {
    print('topicType: $topicType');
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table,
        where: '$columnTopicType = ? AND $columnAppInstallType = ?',
        whereArgs: [topicType, appInstallType]);

    return result.isNotEmpty
        ? result.map((e) => e[columnWord] as String).toList()
        : [];
  }

  static Future<List<String>> getAllAnswers(
      String topicType, String appInstallType) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table,
        where: '$columnTopicType = ? AND $columnAppInstallType = ?',
        whereArgs: [topicType, appInstallType]);

    return result.isNotEmpty
        ? result.map((e) => e[columnAnswer] as String).toList()
        : [];
  }
}
