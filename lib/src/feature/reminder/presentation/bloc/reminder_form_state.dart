part of 'reminder_form_cubit.dart';

@freezed
class ReminderFormState with _$ReminderFormState {
  const factory ReminderFormState({
    required String title,
    required String description,
    required DateTime? time,
    // null id represents creating a new Reminder.
    required String? id,
  }) = _ReminderFormState;

  factory ReminderFormState.initial() => const ReminderFormState(
        title: '',
        description: '',
        time: null,
        id: null,
      );
}
