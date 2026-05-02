// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingSession _$TrainingSessionFromJson(Map<String, dynamic> json) {
  return _TrainingSession.fromJson(json);
}

/// @nodoc
mixin _$TrainingSession {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get blockId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get date => throw _privateConstructorUsedError;
  int get weekIndex => throw _privateConstructorUsedError;
  int get dayIndex => throw _privateConstructorUsedError;
  SessionStatus get status => throw _privateConstructorUsedError;
  List<SessionLift> get lifts => throw _privateConstructorUsedError;
  double? get bodyweightKg => throw _privateConstructorUsedError;
  double? get sessionRpe => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this TrainingSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingSessionCopyWith<TrainingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingSessionCopyWith<$Res> {
  factory $TrainingSessionCopyWith(
          TrainingSession value, $Res Function(TrainingSession) then) =
      _$TrainingSessionCopyWithImpl<$Res, TrainingSession>;
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String blockId,
      @TimestampConverter() DateTime date,
      int weekIndex,
      int dayIndex,
      SessionStatus status,
      List<SessionLift> lifts,
      double? bodyweightKg,
      double? sessionRpe,
      String? notes});
}

/// @nodoc
class _$TrainingSessionCopyWithImpl<$Res, $Val extends TrainingSession>
    implements $TrainingSessionCopyWith<$Res> {
  _$TrainingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? blockId = null,
    Object? date = null,
    Object? weekIndex = null,
    Object? dayIndex = null,
    Object? status = null,
    Object? lifts = null,
    Object? bodyweightKg = freezed,
    Object? sessionRpe = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekIndex: null == weekIndex
          ? _value.weekIndex
          : weekIndex // ignore: cast_nullable_to_non_nullable
              as int,
      dayIndex: null == dayIndex
          ? _value.dayIndex
          : dayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      lifts: null == lifts
          ? _value.lifts
          : lifts // ignore: cast_nullable_to_non_nullable
              as List<SessionLift>,
      bodyweightKg: freezed == bodyweightKg
          ? _value.bodyweightKg
          : bodyweightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      sessionRpe: freezed == sessionRpe
          ? _value.sessionRpe
          : sessionRpe // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingSessionImplCopyWith<$Res>
    implements $TrainingSessionCopyWith<$Res> {
  factory _$$TrainingSessionImplCopyWith(_$TrainingSessionImpl value,
          $Res Function(_$TrainingSessionImpl) then) =
      __$$TrainingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String blockId,
      @TimestampConverter() DateTime date,
      int weekIndex,
      int dayIndex,
      SessionStatus status,
      List<SessionLift> lifts,
      double? bodyweightKg,
      double? sessionRpe,
      String? notes});
}

/// @nodoc
class __$$TrainingSessionImplCopyWithImpl<$Res>
    extends _$TrainingSessionCopyWithImpl<$Res, _$TrainingSessionImpl>
    implements _$$TrainingSessionImplCopyWith<$Res> {
  __$$TrainingSessionImplCopyWithImpl(
      _$TrainingSessionImpl _value, $Res Function(_$TrainingSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? blockId = null,
    Object? date = null,
    Object? weekIndex = null,
    Object? dayIndex = null,
    Object? status = null,
    Object? lifts = null,
    Object? bodyweightKg = freezed,
    Object? sessionRpe = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$TrainingSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekIndex: null == weekIndex
          ? _value.weekIndex
          : weekIndex // ignore: cast_nullable_to_non_nullable
              as int,
      dayIndex: null == dayIndex
          ? _value.dayIndex
          : dayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      lifts: null == lifts
          ? _value._lifts
          : lifts // ignore: cast_nullable_to_non_nullable
              as List<SessionLift>,
      bodyweightKg: freezed == bodyweightKg
          ? _value.bodyweightKg
          : bodyweightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      sessionRpe: freezed == sessionRpe
          ? _value.sessionRpe
          : sessionRpe // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingSessionImpl implements _TrainingSession {
  const _$TrainingSessionImpl(
      {required this.id,
      required this.ownerId,
      required this.blockId,
      @TimestampConverter() required this.date,
      required this.weekIndex,
      required this.dayIndex,
      required this.status,
      required final List<SessionLift> lifts,
      this.bodyweightKg,
      this.sessionRpe,
      this.notes})
      : _lifts = lifts;

  factory _$TrainingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingSessionImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String blockId;
  @override
  @TimestampConverter()
  final DateTime date;
  @override
  final int weekIndex;
  @override
  final int dayIndex;
  @override
  final SessionStatus status;
  final List<SessionLift> _lifts;
  @override
  List<SessionLift> get lifts {
    if (_lifts is EqualUnmodifiableListView) return _lifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lifts);
  }

  @override
  final double? bodyweightKg;
  @override
  final double? sessionRpe;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TrainingSession(id: $id, ownerId: $ownerId, blockId: $blockId, date: $date, weekIndex: $weekIndex, dayIndex: $dayIndex, status: $status, lifts: $lifts, bodyweightKg: $bodyweightKg, sessionRpe: $sessionRpe, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.blockId, blockId) || other.blockId == blockId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weekIndex, weekIndex) ||
                other.weekIndex == weekIndex) &&
            (identical(other.dayIndex, dayIndex) ||
                other.dayIndex == dayIndex) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._lifts, _lifts) &&
            (identical(other.bodyweightKg, bodyweightKg) ||
                other.bodyweightKg == bodyweightKg) &&
            (identical(other.sessionRpe, sessionRpe) ||
                other.sessionRpe == sessionRpe) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      blockId,
      date,
      weekIndex,
      dayIndex,
      status,
      const DeepCollectionEquality().hash(_lifts),
      bodyweightKg,
      sessionRpe,
      notes);

  /// Create a copy of TrainingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      __$$TrainingSessionImplCopyWithImpl<_$TrainingSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingSessionImplToJson(
      this,
    );
  }
}

abstract class _TrainingSession implements TrainingSession {
  const factory _TrainingSession(
      {required final String id,
      required final String ownerId,
      required final String blockId,
      @TimestampConverter() required final DateTime date,
      required final int weekIndex,
      required final int dayIndex,
      required final SessionStatus status,
      required final List<SessionLift> lifts,
      final double? bodyweightKg,
      final double? sessionRpe,
      final String? notes}) = _$TrainingSessionImpl;

  factory _TrainingSession.fromJson(Map<String, dynamic> json) =
      _$TrainingSessionImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String get blockId;
  @override
  @TimestampConverter()
  DateTime get date;
  @override
  int get weekIndex;
  @override
  int get dayIndex;
  @override
  SessionStatus get status;
  @override
  List<SessionLift> get lifts;
  @override
  double? get bodyweightKg;
  @override
  double? get sessionRpe;
  @override
  String? get notes;

  /// Create a copy of TrainingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingSessionImplCopyWith<_$TrainingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionLift _$SessionLiftFromJson(Map<String, dynamic> json) {
  return _SessionLift.fromJson(json);
}

/// @nodoc
mixin _$SessionLift {
  String get liftId => throw _privateConstructorUsedError;
  Prescription get prescription => throw _privateConstructorUsedError;
  List<ActualSet> get actuals => throw _privateConstructorUsedError;
  double? get topSetE1RM => throw _privateConstructorUsedError;

  /// Serializes this SessionLift to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionLiftCopyWith<SessionLift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionLiftCopyWith<$Res> {
  factory $SessionLiftCopyWith(
          SessionLift value, $Res Function(SessionLift) then) =
      _$SessionLiftCopyWithImpl<$Res, SessionLift>;
  @useResult
  $Res call(
      {String liftId,
      Prescription prescription,
      List<ActualSet> actuals,
      double? topSetE1RM});

  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class _$SessionLiftCopyWithImpl<$Res, $Val extends SessionLift>
    implements $SessionLiftCopyWith<$Res> {
  _$SessionLiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftId = null,
    Object? prescription = null,
    Object? actuals = null,
    Object? topSetE1RM = freezed,
  }) {
    return _then(_value.copyWith(
      liftId: null == liftId
          ? _value.liftId
          : liftId // ignore: cast_nullable_to_non_nullable
              as String,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Prescription,
      actuals: null == actuals
          ? _value.actuals
          : actuals // ignore: cast_nullable_to_non_nullable
              as List<ActualSet>,
      topSetE1RM: freezed == topSetE1RM
          ? _value.topSetE1RM
          : topSetE1RM // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrescriptionCopyWith<$Res> get prescription {
    return $PrescriptionCopyWith<$Res>(_value.prescription, (value) {
      return _then(_value.copyWith(prescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionLiftImplCopyWith<$Res>
    implements $SessionLiftCopyWith<$Res> {
  factory _$$SessionLiftImplCopyWith(
          _$SessionLiftImpl value, $Res Function(_$SessionLiftImpl) then) =
      __$$SessionLiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String liftId,
      Prescription prescription,
      List<ActualSet> actuals,
      double? topSetE1RM});

  @override
  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class __$$SessionLiftImplCopyWithImpl<$Res>
    extends _$SessionLiftCopyWithImpl<$Res, _$SessionLiftImpl>
    implements _$$SessionLiftImplCopyWith<$Res> {
  __$$SessionLiftImplCopyWithImpl(
      _$SessionLiftImpl _value, $Res Function(_$SessionLiftImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftId = null,
    Object? prescription = null,
    Object? actuals = null,
    Object? topSetE1RM = freezed,
  }) {
    return _then(_$SessionLiftImpl(
      liftId: null == liftId
          ? _value.liftId
          : liftId // ignore: cast_nullable_to_non_nullable
              as String,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Prescription,
      actuals: null == actuals
          ? _value._actuals
          : actuals // ignore: cast_nullable_to_non_nullable
              as List<ActualSet>,
      topSetE1RM: freezed == topSetE1RM
          ? _value.topSetE1RM
          : topSetE1RM // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionLiftImpl implements _SessionLift {
  const _$SessionLiftImpl(
      {required this.liftId,
      required this.prescription,
      required final List<ActualSet> actuals,
      this.topSetE1RM})
      : _actuals = actuals;

  factory _$SessionLiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionLiftImplFromJson(json);

  @override
  final String liftId;
  @override
  final Prescription prescription;
  final List<ActualSet> _actuals;
  @override
  List<ActualSet> get actuals {
    if (_actuals is EqualUnmodifiableListView) return _actuals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actuals);
  }

  @override
  final double? topSetE1RM;

  @override
  String toString() {
    return 'SessionLift(liftId: $liftId, prescription: $prescription, actuals: $actuals, topSetE1RM: $topSetE1RM)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionLiftImpl &&
            (identical(other.liftId, liftId) || other.liftId == liftId) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription) &&
            const DeepCollectionEquality().equals(other._actuals, _actuals) &&
            (identical(other.topSetE1RM, topSetE1RM) ||
                other.topSetE1RM == topSetE1RM));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, liftId, prescription,
      const DeepCollectionEquality().hash(_actuals), topSetE1RM);

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionLiftImplCopyWith<_$SessionLiftImpl> get copyWith =>
      __$$SessionLiftImplCopyWithImpl<_$SessionLiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionLiftImplToJson(
      this,
    );
  }
}

abstract class _SessionLift implements SessionLift {
  const factory _SessionLift(
      {required final String liftId,
      required final Prescription prescription,
      required final List<ActualSet> actuals,
      final double? topSetE1RM}) = _$SessionLiftImpl;

  factory _SessionLift.fromJson(Map<String, dynamic> json) =
      _$SessionLiftImpl.fromJson;

  @override
  String get liftId;
  @override
  Prescription get prescription;
  @override
  List<ActualSet> get actuals;
  @override
  double? get topSetE1RM;

  /// Create a copy of SessionLift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionLiftImplCopyWith<_$SessionLiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActualSet _$ActualSetFromJson(Map<String, dynamic> json) {
  return _ActualSet.fromJson(json);
}

/// @nodoc
mixin _$ActualSet {
  double get weight => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  double? get rpe => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  bool get missed => throw _privateConstructorUsedError;

  /// Serializes this ActualSet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActualSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActualSetCopyWith<ActualSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActualSetCopyWith<$Res> {
  factory $ActualSetCopyWith(ActualSet value, $Res Function(ActualSet) then) =
      _$ActualSetCopyWithImpl<$Res, ActualSet>;
  @useResult
  $Res call({double weight, int reps, double? rpe, bool done, bool missed});
}

/// @nodoc
class _$ActualSetCopyWithImpl<$Res, $Val extends ActualSet>
    implements $ActualSetCopyWith<$Res> {
  _$ActualSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActualSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
    Object? rpe = freezed,
    Object? done = null,
    Object? missed = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      rpe: freezed == rpe
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as double?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      missed: null == missed
          ? _value.missed
          : missed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActualSetImplCopyWith<$Res>
    implements $ActualSetCopyWith<$Res> {
  factory _$$ActualSetImplCopyWith(
          _$ActualSetImpl value, $Res Function(_$ActualSetImpl) then) =
      __$$ActualSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, int reps, double? rpe, bool done, bool missed});
}

/// @nodoc
class __$$ActualSetImplCopyWithImpl<$Res>
    extends _$ActualSetCopyWithImpl<$Res, _$ActualSetImpl>
    implements _$$ActualSetImplCopyWith<$Res> {
  __$$ActualSetImplCopyWithImpl(
      _$ActualSetImpl _value, $Res Function(_$ActualSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActualSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? reps = null,
    Object? rpe = freezed,
    Object? done = null,
    Object? missed = null,
  }) {
    return _then(_$ActualSetImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      rpe: freezed == rpe
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as double?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      missed: null == missed
          ? _value.missed
          : missed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActualSetImpl implements _ActualSet {
  const _$ActualSetImpl(
      {required this.weight,
      required this.reps,
      this.rpe,
      this.done = false,
      this.missed = false});

  factory _$ActualSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActualSetImplFromJson(json);

  @override
  final double weight;
  @override
  final int reps;
  @override
  final double? rpe;
  @override
  @JsonKey()
  final bool done;
  @override
  @JsonKey()
  final bool missed;

  @override
  String toString() {
    return 'ActualSet(weight: $weight, reps: $reps, rpe: $rpe, done: $done, missed: $missed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActualSetImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.rpe, rpe) || other.rpe == rpe) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.missed, missed) || other.missed == missed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weight, reps, rpe, done, missed);

  /// Create a copy of ActualSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActualSetImplCopyWith<_$ActualSetImpl> get copyWith =>
      __$$ActualSetImplCopyWithImpl<_$ActualSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActualSetImplToJson(
      this,
    );
  }
}

abstract class _ActualSet implements ActualSet {
  const factory _ActualSet(
      {required final double weight,
      required final int reps,
      final double? rpe,
      final bool done,
      final bool missed}) = _$ActualSetImpl;

  factory _ActualSet.fromJson(Map<String, dynamic> json) =
      _$ActualSetImpl.fromJson;

  @override
  double get weight;
  @override
  int get reps;
  @override
  double? get rpe;
  @override
  bool get done;
  @override
  bool get missed;

  /// Create a copy of ActualSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActualSetImplCopyWith<_$ActualSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
