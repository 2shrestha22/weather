import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:weather/src/app/app.dart';
import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/core/model/reminder_notification.dart';

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

  Hive.registerAdapter(ReminderNotificationAdapter());
  try {
    // Notification box stores reminders id which are scheduled.
    await Hive.openBox<ReminderNotification>(
      StorageHelper.notificatioBoxName,
      path: storageDir.path,
    );
  } catch (_) {
    // delete box if corrupted and repoen the box.
    await Hive.deleteBoxFromDisk(
      StorageHelper.notificatioBoxName,
      path: storageDir.path,
    );
    await Hive.openBox<ReminderNotification>(
      StorageHelper.notificatioBoxName,
      path: storageDir.path,
    );
  }

  // needed for flutter_local_notification
  tz.initializeTimeZones();

  const initializationSettingsAndroid =
      AndroidInitializationSettings('notification_icon');
  const initializationSettingsDarwin = DarwinInitializationSettings();

  await FlutterLocalNotificationsPlugin().initialize(
    const InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    ),
  );

  runApp(const App());
}
