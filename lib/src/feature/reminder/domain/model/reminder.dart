import 'package:freezed_annotation/freezed_annotation.dart';
part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
class Reminder with _$Reminder {
  const factory Reminder({
    required String id,
    required String title,
    required DateTime time,
    String? description,
  }) = _Reminder;

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}
