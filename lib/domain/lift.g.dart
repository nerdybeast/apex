// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiftImpl _$$LiftImplFromJson(Map<String, dynamic> json) => _$LiftImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      sport: $enumDecode(_$SportEnumMap, json['sport']),
      category: $enumDecode(_$LiftCategoryEnumMap, json['category']),
      parentLiftId: json['parentLiftId'] as String?,
    );

Map<String, dynamic> _$$LiftImplToJson(_$LiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sport': _$SportEnumMap[instance.sport]!,
      'category': _$LiftCategoryEnumMap[instance.category]!,
      'parentLiftId': instance.parentLiftId,
    };

const _$SportEnumMap = {
  Sport.powerlifting: 'powerlifting',
  Sport.weightlifting: 'weightlifting',
};

const _$LiftCategoryEnumMap = {
  LiftCategory.competition: 'competition',
  LiftCategory.variation: 'variation',
  LiftCategory.accessory: 'accessory',
};
