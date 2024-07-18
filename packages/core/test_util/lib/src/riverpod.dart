import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

/// [ProviderContainer] を作成し、テスト終了時に自動的に破棄。
///
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  // ProviderContainer を作成し、オプションでパラメータを指定できるようする。
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );
  addTearDown(container.dispose);
  return container;
}

// テストが終了したら、コンテナを破棄する。
class Listener<T> extends Mock {
  void call(T? prev, T? value);
}
