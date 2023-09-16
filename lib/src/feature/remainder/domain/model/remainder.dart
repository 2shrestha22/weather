import 'package:freezed_annotation/freezed_annotation.dart';
part 'remainder.freezed.dart';
part 'remainder.g.dart';

@freezed
class Remainder with _$Remainder {
  const factory Remainder({
    required String id,
    required String title,
    required DateTime time,
    String? description,
  }) = _Remainder;

  factory Remainder.fromJson(Map<String, dynamic> json) =>
      _$RemainderFromJson(json);
}
