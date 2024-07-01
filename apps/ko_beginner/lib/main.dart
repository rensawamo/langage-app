import 'package:core_utility/utility.dart';
import 'package:core_utility/utility/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ko_beginner/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.configure();

  runApp(
    ProviderScope(
      child: const App(),
    ),
  );
}
