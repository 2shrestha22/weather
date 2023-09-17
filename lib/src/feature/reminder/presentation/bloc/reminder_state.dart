part of 'reminder_bloc.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState({
    @Default([]) List<Reminder> reminders,
  }) = _ReminderState;
}
