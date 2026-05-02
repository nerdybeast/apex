import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/timestamp_converter.dart';
import 'enums.dart';
import 'prescription.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class TrainingSession with _$TrainingSession {
  const factory TrainingSession({
    required String id,
    required String ownerId,
    required String blockId,
    @TimestampConverter() required DateTime date,
    required int weekIndex,
    required int dayIndex,
    required SessionStatus status,
    required List<SessionLift> lifts,
    double? bodyweightKg,
    double? sessionRpe,
    String? notes,
  }) = _TrainingSession;

  factory TrainingSession.fromJson(Map<String, dynamic> json) =>
      _$TrainingSessionFromJson(json);
}

@freezed
class SessionLift with _$SessionLift {
  const factory SessionLift({
    required String liftId,
    required Prescription prescription,
    required List<ActualSet> actuals,
    double? topSetE1RM,
  }) = _SessionLift;

  factory SessionLift.fromJson(Map<String, dynamic> json) =>
      _$SessionLiftFromJson(json);
}

@freezed
class ActualSet with _$ActualSet {
  const factory ActualSet({
    required double weight,
    required int reps,
    double? rpe,
    @Default(false) bool done,
    @Default(false) bool missed,
  }) = _ActualSet;

  factory ActualSet.fromJson(Map<String, dynamic> json) =>
      _$ActualSetFromJson(json);
}
