import 'package:hive/hive.dart';
import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/core/service/notification_service.dart';
import 'package:weather/src/core/service/storage_service.dart';
import 'package:weather/src/feature/reminder/domain/model/reminder.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';

class ReminderRepoImpl implements ReminderRepo {
  ReminderRepoImpl()
      : _storageService =
            StorageService(Hive.box(StorageHelper.reminderBoxName));

  final StorageService _storageService;

  @override
  Future<void> saveReminder(Reminder remainder) async {
    await NotificationService.scheduleNotification(
      id: remainder.id,
      title: remainder.title,
      body: remainder.description ?? '',
      time: remainder.time,
    );
    return _storageService.put(remainder.id, remainder);
  }

  @override
  Future<void> deleteReminder(String id) => _storageService
      .delete(id)
      .then((value) => NotificationService.cancelNotification(id));

  @override
  List<Reminder> getReminders() {
    return _storageService
        .getAll()
        .map((e) => Reminder.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Stream<List<Reminder>> stream() {
    return _storageService.dataStream().map(
          (event) => event
              .map((e) => Reminder.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
  }
}
