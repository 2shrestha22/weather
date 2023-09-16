import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather/src/app/app.dart';
import 'package:weather/src/core/helper/cache_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storageDir = await getApplicationCacheDirectory();
  Hive.init(storageDir.path);
  await CacheManager().init();

  runApp(const App());
}
