part of 'reminder_bloc.dart';

@freezed
class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.started() = _Started;
  const factory ReminderEvent.reminderDeleted(String id) = _ReminderDeleted;
  const factory ReminderEvent.reminderUpdated() = _ReminderUpdated;
}
