import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather/src/app/app.dart';
import 'package:weather/src/core/helper/storage_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // To store cache.
  final cacheDir = await getApplicationCacheDirectory();
  // To store user generated data.
  final storageDir = await getApplicationDocumentsDirectory();

  await Hive.openBox<String>(StorageHelper.cacheBoxName, path: cacheDir.path);
  await Hive.openBox<String>(
    StorageHelper.reminderBoxName,
    path: storageDir.path,
  );

  runApp(const App());
}
