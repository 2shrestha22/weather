// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remainder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Remainder _$RemainderFromJson(Map<String, dynamic> json) {
  return _Remainder.fromJson(json);
}

/// @nodoc
mixin _$Remainder {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemainderCopyWith<Remainder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemainderCopyWith<$Res> {
  factory $RemainderCopyWith(Remainder value, $Res Function(Remainder) then) =
      _$RemainderCopyWithImpl<$Res, Remainder>;
  @useResult
  $Res call({String id, String title, DateTime time, String? description});
}

/// @nodoc
class _$RemainderCopyWithImpl<$Res, $Val extends Remainder>
    implements $RemainderCopyWith<$Res> {
  _$RemainderCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemainderCopyWith<$Res> implements $RemainderCopyWith<$Res> {
  factory _$$_RemainderCopyWith(
          _$_Remainder value, $Res Function(_$_Remainder) then) =
      __$$_RemainderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, DateTime time, String? description});
}

/// @nodoc
class __$$_RemainderCopyWithImpl<$Res>
    extends _$RemainderCopyWithImpl<$Res, _$_Remainder>
    implements _$$_RemainderCopyWith<$Res> {
  __$$_RemainderCopyWithImpl(
      _$_Remainder _value, $Res Function(_$_Remainder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_$_Remainder(
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
class _$_Remainder implements _Remainder {
  const _$_Remainder(
      {required this.id,
      required this.title,
      required this.time,
      this.description});

  factory _$_Remainder.fromJson(Map<String, dynamic> json) =>
      _$$_RemainderFromJson(json);

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
    return 'Remainder(id: $id, title: $title, time: $time, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Remainder &&
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
  _$$_RemainderCopyWith<_$_Remainder> get copyWith =>
      __$$_RemainderCopyWithImpl<_$_Remainder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemainderToJson(
      this,
    );
  }
}

abstract class _Remainder implements Remainder {
  const factory _Remainder(
      {required final String id,
      required final String title,
      required final DateTime time,
      final String? description}) = _$_Remainder;

  factory _Remainder.fromJson(Map<String, dynamic> json) =
      _$_Remainder.fromJson;

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
  _$$_RemainderCopyWith<_$_Remainder> get copyWith =>
      throw _privateConstructorUsedError;
}
