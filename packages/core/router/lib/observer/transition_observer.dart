import 'package:core_foundation/enum/app_transition_type.dart';
import 'package:core_utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class TransitionObserver extends NavigatorObserver {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  // TransitionObserver(this._ref);
  // ignore: unused_field
  // final Ref _ref;

  // 新しいルートがナビゲータースタックにプッシュされたとき
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _onTransition(route, previousRoute, AppTransitionType.push);
  }

  // 現在のルートがナビゲータースタックからポップされたとき
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _onTransition(route, previousRoute, AppTransitionType.pop);
  }

  // 既存のルートが新しいルートで置き換えられたとき
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _onTransition(newRoute, oldRoute, AppTransitionType.replace);
    }
  }

  // ルートがナビゲータースタックから削除されたとき
  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _onTransition(route, previousRoute, AppTransitionType.remove);
  }

  /// ユーザーがナビゲーションジェスチャーを開始したとき
  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    _onTransition(route, previousRoute, AppTransitionType.startUserGesture);
  }

  /// ユーザーがナビゲーションジェスチャーを停止したとき
  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
  }

  void _onTransition(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
    AppTransitionType transitionType,
  ) async {
    /// 表示されたページ名を取得
    final pageName = route.settings.name ?? 'unknown';
    logger.i('pageName: $pageName, ${transitionType.name}');
    await analytics
      ..logEvent(name: 'page_transition', parameters: {
        'page_name': pageName,
        'transition_type': transitionType.name,
      });
  }
}
