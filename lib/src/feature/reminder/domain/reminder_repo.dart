import 'package:weather/src/feature/reminder/domain/model/reminder.dart';

abstract class ReminderRepo {
  List<Reminder> getReminders();

  /// Provides Stream of reminders.
  Stream<List<Reminder>> stream();

  /// Save or update reminder.
  Future<void> saveReminder(Reminder reminder);
  Future<void> deleteReminder(String id);
}
