import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_provider.g.dart';

/// [FirebaseAnalytics] のProvider
@riverpod
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef ref) {
  return FirebaseAnalytics.instance;
}
