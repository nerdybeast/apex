// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramTemplateImpl _$$ProgramTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramTemplateImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      coachId: json['coachId'] as String?,
      sport: $enumDecode(_$SportEnumMap, json['sport']),
      name: json['name'] as String,
      lengthWeeks: (json['lengthWeeks'] as num).toInt(),
      description: json['description'] as String,
      isPreloaded: json['isPreloaded'] as bool,
      weeks: (json['weeks'] as List<dynamic>)
          .map((e) => TemplateWeek.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProgramTemplateImplToJson(
        _$ProgramTemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'coachId': instance.coachId,
      'sport': _$SportEnumMap[instance.sport]!,
      'name': instance.name,
      'lengthWeeks': instance.lengthWeeks,
      'description': instance.description,
      'isPreloaded': instance.isPreloaded,
      'weeks': instance.weeks,
    };

const _$SportEnumMap = {
  Sport.powerlifting: 'powerlifting',
  Sport.weightlifting: 'weightlifting',
};

_$TemplateWeekImpl _$$TemplateWeekImplFromJson(Map<String, dynamic> json) =>
    _$TemplateWeekImpl(
      name: json['name'] as String,
      focus: json['focus'] as String,
      days: (json['days'] as List<dynamic>)
          .map((e) => TemplateDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TemplateWeekImplToJson(_$TemplateWeekImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'focus': instance.focus,
      'days': instance.days,
    };

_$TemplateDayImpl _$$TemplateDayImplFromJson(Map<String, dynamic> json) =>
    _$TemplateDayImpl(
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => TemplateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TemplateDayImplToJson(_$TemplateDayImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'items': instance.items,
    };

_$TemplateItemImpl _$$TemplateItemImplFromJson(Map<String, dynamic> json) =>
    _$TemplateItemImpl(
      liftId: json['liftId'] as String,
      prescription:
          Prescription.fromJson(json['prescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TemplateItemImplToJson(_$TemplateItemImpl instance) =>
    <String, dynamic>{
      'liftId': instance.liftId,
      'prescription': instance.prescription,
    };
