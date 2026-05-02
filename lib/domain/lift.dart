import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part 'lift.freezed.dart';
part 'lift.g.dart';

@freezed
class Lift with _$Lift {
  const factory Lift({
    required String id,
    required String name,
    required Sport sport,
    required LiftCategory category,
    String? parentLiftId,
  }) = _Lift;

  factory Lift.fromJson(Map<String, dynamic> json) => _$LiftFromJson(json);
}
