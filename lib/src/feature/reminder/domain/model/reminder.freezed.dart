// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reminder _$ReminderFromJson(Map<String, dynamic> json) {
  return _Reminder.fromJson(json);
}

/// @nodoc
mixin _$Reminder {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderCopyWith<Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res, Reminder>;
  @useResult
  $Res call({String id, String title, DateTime time, String? description});
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res, $Val extends Reminder>
    implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReminderCopyWith<$Res> implements $ReminderCopyWith<$Res> {
  factory _$$_ReminderCopyWith(
          _$_Reminder value, $Res Function(_$_Reminder) then) =
      __$$_ReminderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, DateTime time, String? description});
}

/// @nodoc
class __$$_ReminderCopyWithImpl<$Res>
    extends _$ReminderCopyWithImpl<$Res, _$_Reminder>
    implements _$$_ReminderCopyWith<$Res> {
  __$$_ReminderCopyWithImpl(
      _$_Reminder _value, $Res Function(_$_Reminder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_$_Reminder(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reminder implements _Reminder {
  const _$_Reminder(
      {required this.id,
      required this.title,
      required this.time,
      this.description});

  factory _$_Reminder.fromJson(Map<String, dynamic> json) =>
      _$$_ReminderFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime time;
  @override
  final String? description;

  @override
  String toString() {
    return 'Reminder(id: $id, title: $title, time: $time, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reminder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, time, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReminderCopyWith<_$_Reminder> get copyWith =>
      __$$_ReminderCopyWithImpl<_$_Reminder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReminderToJson(
      this,
    );
  }
}

abstract class _Reminder implements Reminder {
  const factory _Reminder(
      {required final String id,
      required final String title,
      required final DateTime time,
      final String? description}) = _$_Reminder;

  factory _Reminder.fromJson(Map<String, dynamic> json) = _$_Reminder.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get time;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ReminderCopyWith<_$_Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}
