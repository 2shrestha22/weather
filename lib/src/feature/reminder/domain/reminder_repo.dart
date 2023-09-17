import 'package:weather/src/feature/reminder/domain/model/reminder.dart';

abstract class ReminderRepo {
  List<Reminder> getReminders();

  /// Provides Stream of reminders.
  Stream<List<Reminder>> stream();

  /// Save or update reminder. Also enables notification 5 min before due time.
  ///
  /// When updated cancels old notification schedule and reschedule new one.
  Future<void> saveReminder({
    required Reminder reminder,
    required bool isUpdate,
  });

  Future<void> deleteReminder(String id);
}
