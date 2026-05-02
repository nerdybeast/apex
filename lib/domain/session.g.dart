// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingSessionImpl _$$TrainingSessionImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingSessionImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      blockId: json['blockId'] as String,
      date: const TimestampConverter().fromJson(json['date'] as Object),
      weekIndex: (json['weekIndex'] as num).toInt(),
      dayIndex: (json['dayIndex'] as num).toInt(),
      status: $enumDecode(_$SessionStatusEnumMap, json['status']),
      lifts: (json['lifts'] as List<dynamic>)
          .map((e) => SessionLift.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodyweightKg: (json['bodyweightKg'] as num?)?.toDouble(),
      sessionRpe: (json['sessionRpe'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TrainingSessionImplToJson(
        _$TrainingSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'blockId': instance.blockId,
      'date': const TimestampConverter().toJson(instance.date),
      'weekIndex': instance.weekIndex,
      'dayIndex': instance.dayIndex,
      'status': _$SessionStatusEnumMap[instance.status]!,
      'lifts': instance.lifts,
      'bodyweightKg': instance.bodyweightKg,
      'sessionRpe': instance.sessionRpe,
      'notes': instance.notes,
    };

const _$SessionStatusEnumMap = {
  SessionStatus.planned: 'planned',
  SessionStatus.inProgress: 'in_progress',
  SessionStatus.completed: 'completed',
  SessionStatus.missed: 'missed',
};

_$SessionLiftImpl _$$SessionLiftImplFromJson(Map<String, dynamic> json) =>
    _$SessionLiftImpl(
      liftId: json['liftId'] as String,
      prescription:
          Prescription.fromJson(json['prescription'] as Map<String, dynamic>),
      actuals: (json['actuals'] as List<dynamic>)
          .map((e) => ActualSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      topSetE1RM: (json['topSetE1RM'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SessionLiftImplToJson(_$SessionLiftImpl instance) =>
    <String, dynamic>{
      'liftId': instance.liftId,
      'prescription': instance.prescription,
      'actuals': instance.actuals,
      'topSetE1RM': instance.topSetE1RM,
    };

_$ActualSetImpl _$$ActualSetImplFromJson(Map<String, dynamic> json) =>
    _$ActualSetImpl(
      weight: (json['weight'] as num).toDouble(),
      reps: (json['reps'] as num).toInt(),
      rpe: (json['rpe'] as num?)?.toDouble(),
      done: json['done'] as bool? ?? false,
      missed: json['missed'] as bool? ?? false,
    );

Map<String, dynamic> _$$ActualSetImplToJson(_$ActualSetImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'reps': instance.reps,
      'rpe': instance.rpe,
      'done': instance.done,
      'missed': instance.missed,
    };
