// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remainder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Remainder _$$_RemainderFromJson(Map<String, dynamic> json) => _$_Remainder(
      id: json['id'] as String,
      title: json['title'] as String,
      time: DateTime.parse(json['time'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_RemainderToJson(_$_Remainder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time': instance.time.toIso8601String(),
      'description': instance.description,
    };
