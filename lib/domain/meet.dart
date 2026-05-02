import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/timestamp_converter.dart';
import 'enums.dart';

part 'meet.freezed.dart';
part 'meet.g.dart';

@freezed
class Meet with _$Meet {
  const factory Meet({
    required String id,
    required String ownerId,
    String? blockId,
    required String federation,
    @TimestampConverter() required DateTime date,
    required String weightClass,
    required Sport sport,

    /// Powerlifting attempts. Keyed by `squat`, `bench`, `deadlift`. Empty
    /// for OL meets.
    @Default(<String, List<Attempt>>{}) Map<String, List<Attempt>> plAttempts,

    /// Olympic attempts. Keyed by `snatch`, `cleanAndJerk`. Empty for PL.
    @Default(<String, List<Attempt>>{}) Map<String, List<Attempt>> olAttempts,
  }) = _Meet;

  factory Meet.fromJson(Map<String, dynamic> json) => _$MeetFromJson(json);
}

@freezed
class Attempt with _$Attempt {
  const factory Attempt({
    required double weight,
    required AttemptStatus status,
  }) = _Attempt;

  factory Attempt.fromJson(Map<String, dynamic> json) =>
      _$AttemptFromJson(json);
}
