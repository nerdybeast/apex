import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';
import 'prescription.dart';

part 'program_template.freezed.dart';
part 'program_template.g.dart';

@freezed
class ProgramTemplate with _$ProgramTemplate {
  const factory ProgramTemplate({
    required String id,
    required String ownerId,
    String? coachId,
    required Sport sport,
    required String name,
    required int lengthWeeks,
    required String description,
    required bool isPreloaded,
    required List<TemplateWeek> weeks,
  }) = _ProgramTemplate;

  factory ProgramTemplate.fromJson(Map<String, dynamic> json) =>
      _$ProgramTemplateFromJson(json);
}

@freezed
class TemplateWeek with _$TemplateWeek {
  const factory TemplateWeek({
    required String name,
    required String focus,
    required List<TemplateDay> days,
  }) = _TemplateWeek;

  factory TemplateWeek.fromJson(Map<String, dynamic> json) =>
      _$TemplateWeekFromJson(json);
}

@freezed
class TemplateDay with _$TemplateDay {
  const factory TemplateDay({
    required String name,
    required List<TemplateItem> items,
  }) = _TemplateDay;

  factory TemplateDay.fromJson(Map<String, dynamic> json) =>
      _$TemplateDayFromJson(json);
}

@freezed
class TemplateItem with _$TemplateItem {
  const factory TemplateItem({
    required String liftId,
    required Prescription prescription,
  }) = _TemplateItem;

  factory TemplateItem.fromJson(Map<String, dynamic> json) =>
      _$TemplateItemFromJson(json);
}
