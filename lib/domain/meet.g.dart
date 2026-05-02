// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetImpl _$$MeetImplFromJson(Map<String, dynamic> json) => _$MeetImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      blockId: json['blockId'] as String?,
      federation: json['federation'] as String,
      date: const TimestampConverter().fromJson(json['date'] as Object),
      weightClass: json['weightClass'] as String,
      sport: $enumDecode(_$SportEnumMap, json['sport']),
      plAttempts: (json['plAttempts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => Attempt.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const <String, List<Attempt>>{},
      olAttempts: (json['olAttempts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => Attempt.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const <String, List<Attempt>>{},
    );

Map<String, dynamic> _$$MeetImplToJson(_$MeetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'blockId': instance.blockId,
      'federation': instance.federation,
      'date': const TimestampConverter().toJson(instance.date),
      'weightClass': instance.weightClass,
      'sport': _$SportEnumMap[instance.sport]!,
      'plAttempts': instance.plAttempts,
      'olAttempts': instance.olAttempts,
    };

const _$SportEnumMap = {
  Sport.powerlifting: 'powerlifting',
  Sport.weightlifting: 'weightlifting',
};

_$AttemptImpl _$$AttemptImplFromJson(Map<String, dynamic> json) =>
    _$AttemptImpl(
      weight: (json['weight'] as num).toDouble(),
      status: $enumDecode(_$AttemptStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$AttemptImplToJson(_$AttemptImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'status': _$AttemptStatusEnumMap[instance.status]!,
    };

const _$AttemptStatusEnumMap = {
  AttemptStatus.planned: 'planned',
  AttemptStatus.made: 'made',
  AttemptStatus.missed: 'missed',
};
