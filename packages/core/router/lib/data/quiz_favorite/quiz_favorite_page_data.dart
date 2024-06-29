
import 'package:feature_home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageData extends GoRouteData {
  const HomePageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomePage();
  }
}
