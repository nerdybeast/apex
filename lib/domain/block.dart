import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/timestamp_converter.dart';
import 'enums.dart';
import 'program_template.dart';

part 'block.freezed.dart';
part 'block.g.dart';

@freezed
class Block with _$Block {
  const factory Block({
    required String id,
    required String ownerId,
    required String athleteId,
    String? templateId,
    required Sport sport,
    required String name,
    @TimestampConverter() required DateTime startDate,
    @NullableTimestampConverter() DateTime? meetDate,

    /// Map of liftId -> training max (in user's units at the time the block
    /// was started). Edits to this map only affect this block; they don't
    /// bleed back to the template or other blocks.
    required Map<String, double> trainingMaxes,
    required BlockStatus status,

    /// Snapshot of the template's weeks at the time the block was started.
    required List<TemplateWeek> weeks,
  }) = _Block;

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}
