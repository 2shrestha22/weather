import 'package:hive/hive.dart';
part 'reminder_notification.g.dart';

@HiveType(typeId: 0)
class ReminderNotification extends HiveObject {
  ReminderNotification(this.reminderId);

  @HiveField(0)
  final String reminderId;
}
