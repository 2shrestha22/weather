// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reminder _$$_ReminderFromJson(Map<String, dynamic> json) => _$_Reminder(
      id: json['id'] as String,
      title: json['title'] as String,
      time: DateTime.parse(json['time'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ReminderToJson(_$_Reminder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time': instance.time.toIso8601String(),
      'description': instance.description,
    };
