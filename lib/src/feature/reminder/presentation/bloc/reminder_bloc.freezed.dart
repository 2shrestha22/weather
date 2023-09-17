// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReminderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) reminderDeleted,
    required TResult Function() reminderUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? reminderDeleted,
    TResult? Function()? reminderUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? reminderDeleted,
    TResult Function()? reminderUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReminderDeleted value) reminderDeleted,
    required TResult Function(_ReminderUpdated value) reminderUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReminderDeleted value)? reminderDeleted,
    TResult? Function(_ReminderUpdated value)? reminderUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReminderDeleted value)? reminderDeleted,
    TResult Function(_ReminderUpdated value)? reminderUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderEventCopyWith<$Res> {
  factory $ReminderEventCopyWith(
          ReminderEvent value, $Res Function(ReminderEvent) then) =
      _$ReminderEventCopyWithImpl<$Res, ReminderEvent>;
}

/// @nodoc
class _$ReminderEventCopyWithImpl<$Res, $Val extends ReminderEvent>
    implements $ReminderEventCopyWith<$Res> {
  _$ReminderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ReminderEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) reminderDeleted,
    required TResult Function() reminderUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? reminderDeleted,
    TResult? Function()? reminderUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? reminderDeleted,
    TResult Function()? reminderUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReminderDeleted value) reminderDeleted,
    required TResult Function(_ReminderUpdated value) reminderUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReminderDeleted value)? reminderDeleted,
    TResult? Function(_ReminderUpdated value)? reminderUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReminderDeleted value)? reminderDeleted,
    TResult Function(_ReminderUpdated value)? reminderUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReminderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ReminderDeletedCopyWith<$Res> {
  factory _$$_ReminderDeletedCopyWith(
          _$_ReminderDeleted value, $Res Function(_$_ReminderDeleted) then) =
      __$$_ReminderDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ReminderDeletedCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$_ReminderDeleted>
    implements _$$_ReminderDeletedCopyWith<$Res> {
  __$$_ReminderDeletedCopyWithImpl(
      _$_ReminderDeleted _value, $Res Function(_$_ReminderDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ReminderDeleted(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReminderDeleted implements _ReminderDeleted {
  const _$_ReminderDeleted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReminderEvent.reminderDeleted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReminderDeleted &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReminderDeletedCopyWith<_$_ReminderDeleted> get copyWith =>
      __$$_ReminderDeletedCopyWithImpl<_$_ReminderDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) reminderDeleted,
    required TResult Function() reminderUpdated,
  }) {
    return reminderDeleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? reminderDeleted,
    TResult? Function()? reminderUpdated,
  }) {
    return reminderDeleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? reminderDeleted,
    TResult Function()? reminderUpdated,
    required TResult orElse(),
  }) {
    if (reminderDeleted != null) {
      return reminderDeleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReminderDeleted value) reminderDeleted,
    required TResult Function(_ReminderUpdated value) reminderUpdated,
  }) {
    return reminderDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReminderDeleted value)? reminderDeleted,
    TResult? Function(_ReminderUpdated value)? reminderUpdated,
  }) {
    return reminderDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReminderDeleted value)? reminderDeleted,
    TResult Function(_ReminderUpdated value)? reminderUpdated,
    required TResult orElse(),
  }) {
    if (reminderDeleted != null) {
      return reminderDeleted(this);
    }
    return orElse();
  }
}

abstract class _ReminderDeleted implements ReminderEvent {
  const factory _ReminderDeleted(final String id) = _$_ReminderDeleted;

  String get id;
  @JsonKey(ignore: true)
  _$$_ReminderDeletedCopyWith<_$_ReminderDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReminderUpdatedCopyWith<$Res> {
  factory _$$_ReminderUpdatedCopyWith(
          _$_ReminderUpdated value, $Res Function(_$_ReminderUpdated) then) =
      __$$_ReminderUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReminderUpdatedCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$_ReminderUpdated>
    implements _$$_ReminderUpdatedCopyWith<$Res> {
  __$$_ReminderUpdatedCopyWithImpl(
      _$_ReminderUpdated _value, $Res Function(_$_ReminderUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReminderUpdated implements _ReminderUpdated {
  const _$_ReminderUpdated();

  @override
  String toString() {
    return 'ReminderEvent.reminderUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReminderUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) reminderDeleted,
    required TResult Function() reminderUpdated,
  }) {
    return reminderUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? reminderDeleted,
    TResult? Function()? reminderUpdated,
  }) {
    return reminderUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? reminderDeleted,
    TResult Function()? reminderUpdated,
    required TResult orElse(),
  }) {
    if (reminderUpdated != null) {
      return reminderUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReminderDeleted value) reminderDeleted,
    required TResult Function(_ReminderUpdated value) reminderUpdated,
  }) {
    return reminderUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReminderDeleted value)? reminderDeleted,
    TResult? Function(_ReminderUpdated value)? reminderUpdated,
  }) {
    return reminderUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReminderDeleted value)? reminderDeleted,
    TResult Function(_ReminderUpdated value)? reminderUpdated,
    required TResult orElse(),
  }) {
    if (reminderUpdated != null) {
      return reminderUpdated(this);
    }
    return orElse();
  }
}

abstract class _ReminderUpdated implements ReminderEvent {
  const factory _ReminderUpdated() = _$_ReminderUpdated;
}

/// @nodoc
mixin _$ReminderState {
  List<Reminder> get reminders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReminderStateCopyWith<ReminderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderStateCopyWith<$Res> {
  factory $ReminderStateCopyWith(
          ReminderState value, $Res Function(ReminderState) then) =
      _$ReminderStateCopyWithImpl<$Res, ReminderState>;
  @useResult
  $Res call({List<Reminder> reminders});
}

/// @nodoc
class _$ReminderStateCopyWithImpl<$Res, $Val extends ReminderState>
    implements $ReminderStateCopyWith<$Res> {
  _$ReminderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = null,
  }) {
    return _then(_value.copyWith(
      reminders: null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReminderStateCopyWith<$Res>
    implements $ReminderStateCopyWith<$Res> {
  factory _$$_ReminderStateCopyWith(
          _$_ReminderState value, $Res Function(_$_ReminderState) then) =
      __$$_ReminderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Reminder> reminders});
}

/// @nodoc
class __$$_ReminderStateCopyWithImpl<$Res>
    extends _$ReminderStateCopyWithImpl<$Res, _$_ReminderState>
    implements _$$_ReminderStateCopyWith<$Res> {
  __$$_ReminderStateCopyWithImpl(
      _$_ReminderState _value, $Res Function(_$_ReminderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminders = null,
  }) {
    return _then(_$_ReminderState(
      reminders: null == reminders
          ? _value._reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ));
  }
}

/// @nodoc

class _$_ReminderState implements _ReminderState {
  const _$_ReminderState({final List<Reminder> reminders = const []})
      : _reminders = reminders;

  final List<Reminder> _reminders;
  @override
  @JsonKey()
  List<Reminder> get reminders {
    if (_reminders is EqualUnmodifiableListView) return _reminders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reminders);
  }

  @override
  String toString() {
    return 'ReminderState(reminders: $reminders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReminderState &&
            const DeepCollectionEquality()
                .equals(other._reminders, _reminders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reminders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReminderStateCopyWith<_$_ReminderState> get copyWith =>
      __$$_ReminderStateCopyWithImpl<_$_ReminderState>(this, _$identity);
}

abstract class _ReminderState implements ReminderState {
  const factory _ReminderState({final List<Reminder> reminders}) =
      _$_ReminderState;

  @override
  List<Reminder> get reminders;
  @override
  @JsonKey(ignore: true)
  _$$_ReminderStateCopyWith<_$_ReminderState> get copyWith =>
      throw _privateConstructorUsedError;
}
