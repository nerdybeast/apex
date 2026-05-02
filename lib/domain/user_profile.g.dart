// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      uid: json['uid'] as String,
      displayName: json['displayName'] as String,
      units: $enumDecode(_$UnitsEnumMap, json['units']),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      sport: $enumDecodeNullable(_$SportEnumMap, json['sport']),
      federation: json['federation'] as String?,
      weightClass: json['weightClass'] as String?,
      bodyweightLog: (json['bodyweightLog'] as List<dynamic>?)
              ?.map((e) => BodyweightEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BodyweightEntry>[],
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'units': _$UnitsEnumMap[instance.units]!,
      'sex': _$SexEnumMap[instance.sex]!,
      'role': _$UserRoleEnumMap[instance.role]!,
      'sport': _$SportEnumMap[instance.sport],
      'federation': instance.federation,
      'weightClass': instance.weightClass,
      'bodyweightLog': instance.bodyweightLog,
    };

const _$UnitsEnumMap = {
  Units.kg: 'kg',
  Units.lb: 'lb',
};

const _$SexEnumMap = {
  Sex.m: 'm',
  Sex.f: 'f',
};

const _$UserRoleEnumMap = {
  UserRole.athlete: 'athlete',
  UserRole.coach: 'coach',
};

const _$SportEnumMap = {
  Sport.powerlifting: 'powerlifting',
  Sport.weightlifting: 'weightlifting',
};

_$BodyweightEntryImpl _$$BodyweightEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyweightEntryImpl(
      date: const TimestampConverter().fromJson(json['date'] as Object),
      kg: (json['kg'] as num).toDouble(),
    );

Map<String, dynamic> _$$BodyweightEntryImplToJson(
        _$BodyweightEntryImpl instance) =>
    <String, dynamic>{
      'date': const TimestampConverter().toJson(instance.date),
      'kg': instance.kg,
    };
