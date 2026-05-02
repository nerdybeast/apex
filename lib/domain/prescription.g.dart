// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PercentPrescriptionImpl _$$PercentPrescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$PercentPrescriptionImpl(
      target: (json['target'] as num).toDouble(),
      sets: (json['sets'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      notes: json['notes'] as String?,
      $type: json['scheme'] as String?,
    );

Map<String, dynamic> _$$PercentPrescriptionImplToJson(
        _$PercentPrescriptionImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'sets': instance.sets,
      'reps': instance.reps,
      'notes': instance.notes,
      'scheme': instance.$type,
    };

_$RpePrescriptionImpl _$$RpePrescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$RpePrescriptionImpl(
      target: (json['target'] as num).toDouble(),
      sets: (json['sets'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      notes: json['notes'] as String?,
      $type: json['scheme'] as String?,
    );

Map<String, dynamic> _$$RpePrescriptionImplToJson(
        _$RpePrescriptionImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'sets': instance.sets,
      'reps': instance.reps,
      'notes': instance.notes,
      'scheme': instance.$type,
    };

_$WeightPrescriptionImpl _$$WeightPrescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeightPrescriptionImpl(
      target: (json['target'] as num).toDouble(),
      sets: (json['sets'] as num).toInt(),
      reps: (json['reps'] as num).toInt(),
      notes: json['notes'] as String?,
      $type: json['scheme'] as String?,
    );

Map<String, dynamic> _$$WeightPrescriptionImplToJson(
        _$WeightPrescriptionImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'sets': instance.sets,
      'reps': instance.reps,
      'notes': instance.notes,
      'scheme': instance.$type,
    };

_$AmrapPrescriptionImpl _$$AmrapPrescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$AmrapPrescriptionImpl(
      target: (json['target'] as num).toDouble(),
      sets: (json['sets'] as num).toInt(),
      minReps: (json['minReps'] as num).toInt(),
      notes: json['notes'] as String?,
      $type: json['scheme'] as String?,
    );

Map<String, dynamic> _$$AmrapPrescriptionImplToJson(
        _$AmrapPrescriptionImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'sets': instance.sets,
      'minReps': instance.minReps,
      'notes': instance.notes,
      'scheme': instance.$type,
    };
