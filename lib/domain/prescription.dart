import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription.freezed.dart';
part 'prescription.g.dart';

/// Sealed prescription type. Replaces v1's runtime-sniffed polymorphic
/// ExerciseSet<T>. The discriminator on the wire is `scheme`.
@Freezed(unionKey: 'scheme', unionValueCase: FreezedUnionCase.snake)
sealed class Prescription with _$Prescription {
  /// Percent of training max.
  const factory Prescription.percent({
    required double target,
    required int sets,
    required int reps,
    String? notes,
  }) = PercentPrescription;

  /// Rate of perceived exertion (target RPE).
  const factory Prescription.rpe({
    required double target,
    required int sets,
    required int reps,
    String? notes,
  }) = RpePrescription;

  /// Absolute weight in the user's units.
  const factory Prescription.weight({
    required double target,
    required int sets,
    required int reps,
    String? notes,
  }) = WeightPrescription;

  /// As-many-reps-as-possible at a given % of TM. `target` is the percent.
  const factory Prescription.amrap({
    required double target,
    required int sets,
    required int minReps,
    String? notes,
  }) = AmrapPrescription;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);
}
