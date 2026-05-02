// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaxImpl _$$MaxImplFromJson(Map<String, dynamic> json) => _$MaxImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      liftId: json['liftId'] as String,
      value: (json['value'] as num).toDouble(),
      kind: $enumDecode(_$MaxKindEnumMap, json['kind']),
      date: const TimestampConverter().fromJson(json['date'] as Object),
      sourceSessionId: json['sourceSessionId'] as String?,
    );

Map<String, dynamic> _$$MaxImplToJson(_$MaxImpl instance) => <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'liftId': instance.liftId,
      'value': instance.value,
      'kind': _$MaxKindEnumMap[instance.kind]!,
      'date': const TimestampConverter().toJson(instance.date),
      'sourceSessionId': instance.sourceSessionId,
    };

const _$MaxKindEnumMap = {
  MaxKind.oneRm: '1RM',
  MaxKind.training: 'training',
  MaxKind.e1rm: 'e1RM',
  MaxKind.comp: 'comp',
};
