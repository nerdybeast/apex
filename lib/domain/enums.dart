import 'package:json_annotation/json_annotation.dart';

enum Sport {
  @JsonValue('powerlifting')
  powerlifting,
  @JsonValue('weightlifting')
  weightlifting,
}

enum LiftCategory {
  @JsonValue('competition')
  competition,
  @JsonValue('variation')
  variation,
  @JsonValue('accessory')
  accessory,
}

enum MaxKind {
  @JsonValue('1RM')
  oneRm,
  @JsonValue('training')
  training,
  @JsonValue('e1RM')
  e1rm,
  @JsonValue('comp')
  comp,
}

enum Units {
  @JsonValue('kg')
  kg,
  @JsonValue('lb')
  lb,
}

enum Sex {
  @JsonValue('m')
  m,
  @JsonValue('f')
  f,
}

enum UserRole {
  @JsonValue('athlete')
  athlete,
  @JsonValue('coach')
  coach,
}

enum BlockStatus {
  @JsonValue('planned')
  planned,
  @JsonValue('running')
  running,
  @JsonValue('completed')
  completed,
}

enum SessionStatus {
  @JsonValue('planned')
  planned,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('completed')
  completed,
  @JsonValue('missed')
  missed,
}

enum AttemptStatus {
  @JsonValue('planned')
  planned,
  @JsonValue('made')
  made,
  @JsonValue('missed')
  missed,
}
