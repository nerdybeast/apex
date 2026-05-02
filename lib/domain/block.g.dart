// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockImpl _$$BlockImplFromJson(Map<String, dynamic> json) => _$BlockImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      athleteId: json['athleteId'] as String,
      templateId: json['templateId'] as String?,
      sport: $enumDecode(_$SportEnumMap, json['sport']),
      name: json['name'] as String,
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as Object),
      meetDate: const NullableTimestampConverter().fromJson(json['meetDate']),
      trainingMaxes: (json['trainingMaxes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      status: $enumDecode(_$BlockStatusEnumMap, json['status']),
      weeks: (json['weeks'] as List<dynamic>)
          .map((e) => TemplateWeek.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BlockImplToJson(_$BlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'athleteId': instance.athleteId,
      'templateId': instance.templateId,
      'sport': _$SportEnumMap[instance.sport]!,
      'name': instance.name,
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'meetDate': const NullableTimestampConverter().toJson(instance.meetDate),
      'trainingMaxes': instance.trainingMaxes,
      'status': _$BlockStatusEnumMap[instance.status]!,
      'weeks': instance.weeks,
    };

const _$SportEnumMap = {
  Sport.powerlifting: 'powerlifting',
  Sport.weightlifting: 'weightlifting',
};

const _$BlockStatusEnumMap = {
  BlockStatus.planned: 'planned',
  BlockStatus.running: 'running',
  BlockStatus.completed: 'completed',
};
