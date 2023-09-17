import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/core/model/reminder_notification.dart';

class NotificationService {
  NotificationService._();

  static Future<void> requestPermission() async {
    await FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
  }

  static Future<void> scheduleNotification({
    required String id,
    required String title,
    required String body,
    required DateTime time,
  }) async {
    await requestPermission();

    final box =
        Hive.box<ReminderNotification>(StorageHelper.notificatioBoxName);

    final reminderNotification = ReminderNotification(id);

    final key = await box.add(reminderNotification);

    try {
      await FlutterLocalNotificationsPlugin().zonedSchedule(
        key,
        title,
        body,
        tz.TZDateTime.from(time, tz.local),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            '0',
            'REMINDER',
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
    } catch (e) {
      await reminderNotification.delete();
      rethrow;
    }
  }

  static Future<void> cancelNotification(String id) async {
    final box =
        Hive.box<ReminderNotification>(StorageHelper.notificatioBoxName);

    final reminderNotification =
        box.values.firstWhere((element) => element.reminderId == id);

    final notId = reminderNotification.key;
    await FlutterLocalNotificationsPlugin().cancel(notId as int);
    await reminderNotification.delete();
  }
}
