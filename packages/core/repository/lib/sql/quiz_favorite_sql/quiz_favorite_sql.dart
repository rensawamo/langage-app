import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

part 'quiz_favorite_sql.g.dart';

@Riverpod(keepAlive: true)
QuizFavoriteSql quizFavoriteSql(QuizFavoriteSqlRef ref) => QuizFavoriteSql();

class QuizFavoriteSql {
  Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _init();
    return _db!;
  }

  /// [table] テーブル名
  /// [columnWord] 単語
  /// [columnAnswer] 答え
  /// [columnSentence] 例文
  /// [columnTranslation] 例文の翻訳
  /// [columnPronunciation] 発音
  /// [columnTopicType] トピックの種類 [QuizTopicType] の name
  static final table = 'quiz';
  static final columnWord = 'word';
  static final columnAnswer = 'answer';
  static final columnSentence = 'sentence';
  static final columnTranslation = 'translation';
  static final columnPronunciation = 'pronunciation';
  static final columnTopicType = 'topicType';
  final queries = [
    [
      '''
       CREATE TABLE $table (
            $columnWord TEXT PRIMARY KEY,
            $columnAnswer TEXT,
             $columnTopicType TEXT,
              $columnSentence TEXT,
               $columnTranslation TEXT,
                $columnPronunciation TEXT
          )
      '''
    ]
  ];

  // DB初期設定
  Future<Database> _init() async {
    final path = join(await getDatabasesPath(), 'QuizDatabase.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        for (final query in queries.first) {
          await db.execute(query);
        }
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        for (var i = oldVersion; i < newVersion; i++) {
          for (final query in queries[i]) {
            await db.execute(query);
          }
        }
      },
    );
  }
}
