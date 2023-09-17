// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReminderFormState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get time =>
      throw _privateConstructorUsedError; // null id represents creating a new Reminder.
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReminderFormStateCopyWith<ReminderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderFormStateCopyWith<$Res> {
  factory $ReminderFormStateCopyWith(
          ReminderFormState value, $Res Function(ReminderFormState) then) =
      _$ReminderFormStateCopyWithImpl<$Res, ReminderFormState>;
  @useResult
  $Res call({String title, String description, DateTime? time, String? id});
}

/// @nodoc
class _$ReminderFormStateCopyWithImpl<$Res, $Val extends ReminderFormState>
    implements $ReminderFormStateCopyWith<$Res> {
  _$ReminderFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReminderFormStateCopyWith<$Res>
    implements $ReminderFormStateCopyWith<$Res> {
  factory _$$_ReminderFormStateCopyWith(_$_ReminderFormState value,
          $Res Function(_$_ReminderFormState) then) =
      __$$_ReminderFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, DateTime? time, String? id});
}

/// @nodoc
class __$$_ReminderFormStateCopyWithImpl<$Res>
    extends _$ReminderFormStateCopyWithImpl<$Res, _$_ReminderFormState>
    implements _$$_ReminderFormStateCopyWith<$Res> {
  __$$_ReminderFormStateCopyWithImpl(
      _$_ReminderFormState _value, $Res Function(_$_ReminderFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? time = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ReminderFormState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ReminderFormState implements _ReminderFormState {
  const _$_ReminderFormState(
      {required this.title,
      required this.description,
      required this.time,
      required this.id});

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime? time;
// null id represents creating a new Reminder.
  @override
  final String? id;

  @override
  String toString() {
    return 'ReminderFormState(title: $title, description: $description, time: $time, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReminderFormState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, time, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReminderFormStateCopyWith<_$_ReminderFormState> get copyWith =>
      __$$_ReminderFormStateCopyWithImpl<_$_ReminderFormState>(
          this, _$identity);
}

abstract class _ReminderFormState implements ReminderFormState {
  const factory _ReminderFormState(
      {required final String title,
      required final String description,
      required final DateTime? time,
      required final String? id}) = _$_ReminderFormState;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime? get time;
  @override // null id represents creating a new Reminder.
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ReminderFormStateCopyWith<_$_ReminderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
