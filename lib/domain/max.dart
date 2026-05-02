import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/timestamp_converter.dart';
import 'enums.dart';

part 'max.freezed.dart';
part 'max.g.dart';

@freezed
class Max with _$Max {
  const factory Max({
    required String id,
    required String ownerId,
    required String liftId,
    required double value,
    required MaxKind kind,
    @TimestampConverter() required DateTime date,
    String? sourceSessionId,
  }) = _Max;

  factory Max.fromJson(Map<String, dynamic> json) => _$MaxFromJson(json);
}
