echo "Running tests...🚀"

# カバレッジデータを再生成
melos  unit_test_and_coverage

# 不要なカバレッジデータを削除
lcov --remove coverage/lcov.info 'lib/util/assets/*' 'lib/localization/*' 'lib/infrastructure/isar/**/collection/*' 'lib/**/*.g.dart' 'lib/domain/repository/**/entity/*.dart' -o coverage/filtered.lcov.info

# HTMLレポートを生成 #エラーが出ている場所は無視　
genhtml coverage/filtered.lcov.info -o coverage/html --ignore-errors source --synthesize-missing

# ブラウザで表示
open coverage/html/index.html
