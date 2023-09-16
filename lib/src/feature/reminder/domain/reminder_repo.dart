import 'package:weather/src/feature/reminder/domain/model/reminder.dart';

abstract class ReminderRepo {
  List<Reminder> getReminders();
  Future<void> createReminder(Reminder reminder);
  Reminder deleteReminder(String id);
}
