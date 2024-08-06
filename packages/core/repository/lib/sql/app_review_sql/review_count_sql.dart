import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

part 'review_count_sql.g.dart';

@Riverpod(keepAlive: true)
ReviewCountSql reviewCountSql(ReviewCountSqlRef ref) => ReviewCountSql();

class ReviewCountSql {
  Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _init();
    return _db!;
  }

  static final table = 'review_count';
  static final columnId = 'id';
  static final columnCount = 'count';
  static final appInstallType = 'app_install_type';

  final queries = [
    [
      '''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnCount INTEGER,
        $appInstallType TEXT
      )
      '''
    ]
  ];

  // DB初期設定
  Future<Database> _init() async {
    final path = join(await getDatabasesPath(), 'ReviewDatabase.db');
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
