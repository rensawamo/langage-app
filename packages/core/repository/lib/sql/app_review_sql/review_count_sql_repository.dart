import 'package:core_foundation/foundation.dart';
import 'package:core_repository/repository.dart';
import 'package:core_repository/sql/app_review_sql/review_count_sql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_count_sql_repository.g.dart';

/// [ReviewCountSqlRepository] のProvider
/// [ReviewCountSql] を引数に取り
/// [ReviewCountSqlRepositoryImpl] の具象クラスを返す
@Riverpod(keepAlive: true)
ReviewCountSqlRepository reviewCountSqlRepository(
  ReviewCountSqlRepositoryRef ref,
) {
  return ReviewCountSqlRepositoryImpl(ref.read(reviewCountSqlProvider));
}

/// [ReviewCountSqlRepository] の具象クラス
class ReviewCountSqlRepositoryImpl implements ReviewCountSqlRepository {
  ReviewCountSqlRepositoryImpl(this._database);

  final ReviewCountSql _database;

  /// カウントをインクリメント
  @override
  Future<void> incrementCount(AppInstallType appInstallType) async {
    final db = await _database.db;
    final result = await db.query(
      ReviewCountSql.table,
      where: '${ReviewCountSql.appInstallType} = ?',
      whereArgs: [appInstallType.name],
    );

    if (result.isEmpty) {
      await db.insert(ReviewCountSql.table, {
        ReviewCountSql.columnCount: 1,
        ReviewCountSql.appInstallType: appInstallType.name,
      });
    } else {
      int currentCount = result.first[ReviewCountSql.columnCount] as int;
      currentCount++;
      await db.update(
        ReviewCountSql.table,
        {ReviewCountSql.columnCount: currentCount},
        where: '${ReviewCountSql.appInstallType} = ?',
        whereArgs: [appInstallType.name],
      );
    }
  }

  /// カウントを取得
  @override
  Future<int> getCount(AppInstallType appInstallType) async {
    final db = await _database.db;
    final result = await db.query(
      ReviewCountSql.table,
      where: '${ReviewCountSql.appInstallType} = ?',
      whereArgs: [appInstallType.name],
    );

    if (result.isEmpty) {
      return 0;
    }

    return result.first[ReviewCountSql.columnCount] as int;
  }
}

/// [ReviewCountSql] のdb操作を行う抽象クラス
abstract class ReviewCountSqlRepository {
  // カウントをインクリメント
  Future<void> incrementCount(AppInstallType appInstallType);
  // カウントを取得
  Future<int> getCount(AppInstallType appInstallType);
}
