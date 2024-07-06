
import 'package:core_utility/utility.dart';
import 'package:flutter/material.dart';

enum TransitionType {
  push,
  pop,
  replace,
  remove,
  startUserGesture,
  stopUserGesture,
}

class TransitionObserver extends NavigatorObserver {
  // TransitionObserver(this._ref);
  // ignore: unused_field
  // final Ref _ref;

  // 新しいルートがナビゲータースタックにプッシュされたとき
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _onTransition(route, previousRoute, TransitionType.push);
  }

  // 現在のルートがナビゲータースタックからポップされたとき
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _onTransition(route, previousRoute, TransitionType.pop);
  }

  // 既存のルートが新しいルートで置き換えられたとき
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _onTransition(newRoute, oldRoute, TransitionType.replace);
    }
  }

  // ルートがナビゲータースタックから削除されたとき
  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _onTransition(route, previousRoute, TransitionType.remove);
  }

  /// ユーザーがナビゲーションジェスチャーを開始したとき
  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    _onTransition(route, previousRoute, TransitionType.startUserGesture);
  }

  /// ユーザーがナビゲーションジェスチャーを停止したとき
  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
  }

  void _onTransition(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
    TransitionType transitionType,
  ) {
    final pageName = route.settings.name;
    logger.i('pageName: $pageName, ${transitionType.name}');
  }
}
