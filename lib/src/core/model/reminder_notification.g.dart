// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_notification.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReminderNotificationAdapter extends TypeAdapter<ReminderNotification> {
  @override
  final int typeId = 0;

  @override
  ReminderNotification read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReminderNotification(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ReminderNotification obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.reminderId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReminderNotificationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
