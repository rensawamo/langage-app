
import 'package:core_views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopicRouteData extends GoRouteData {
  const TopicRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TopicPage();
  }
}