// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prescription _$PrescriptionFromJson(Map<String, dynamic> json) {
  switch (json['scheme']) {
    case 'percent':
      return PercentPrescription.fromJson(json);
    case 'rpe':
      return RpePrescription.fromJson(json);
    case 'weight':
      return WeightPrescription.fromJson(json);
    case 'amrap':
      return AmrapPrescription.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'scheme', 'Prescription',
          'Invalid union type "${json['scheme']}"!');
  }
}

/// @nodoc
mixin _$Prescription {
  double get target => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double target, int sets, int reps, String? notes)
        percent,
    required TResult Function(double target, int sets, int reps, String? notes)
        rpe,
    required TResult Function(double target, int sets, int reps, String? notes)
        weight,
    required TResult Function(
            double target, int sets, int minReps, String? notes)
        amrap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double target, int sets, int reps, String? notes)?
        percent,
    TResult? Function(double target, int sets, int reps, String? notes)? rpe,
    TResult? Function(double target, int sets, int reps, String? notes)? weight,
    TResult? Function(double target, int sets, int minReps, String? notes)?
        amrap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double target, int sets, int reps, String? notes)? percent,
    TResult Function(double target, int sets, int reps, String? notes)? rpe,
    TResult Function(double target, int sets, int reps, String? notes)? weight,
    TResult Function(double target, int sets, int minReps, String? notes)?
        amrap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PercentPrescription value) percent,
    required TResult Function(RpePrescription value) rpe,
    required TResult Function(WeightPrescription value) weight,
    required TResult Function(AmrapPrescription value) amrap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PercentPrescription value)? percent,
    TResult? Function(RpePrescription value)? rpe,
    TResult? Function(WeightPrescription value)? weight,
    TResult? Function(AmrapPrescription value)? amrap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PercentPrescription value)? percent,
    TResult Function(RpePrescription value)? rpe,
    TResult Function(WeightPrescription value)? weight,
    TResult Function(AmrapPrescription value)? amrap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Prescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionCopyWith<Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionCopyWith<$Res> {
  factory $PrescriptionCopyWith(
          Prescription value, $Res Function(Prescription) then) =
      _$PrescriptionCopyWithImpl<$Res, Prescription>;
  @useResult
  $Res call({double target, int sets, String? notes});
}

/// @nodoc
class _$PrescriptionCopyWithImpl<$Res, $Val extends Prescription>
    implements $PrescriptionCopyWith<$Res> {
  _$PrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? sets = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PercentPrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$PercentPrescriptionImplCopyWith(_$PercentPrescriptionImpl value,
          $Res Function(_$PercentPrescriptionImpl) then) =
      __$$PercentPrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double target, int sets, int reps, String? notes});
}

/// @nodoc
class __$$PercentPrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$PercentPrescriptionImpl>
    implements _$$PercentPrescriptionImplCopyWith<$Res> {
  __$$PercentPrescriptionImplCopyWithImpl(_$PercentPrescriptionImpl _value,
      $Res Function(_$PercentPrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? sets = null,
    Object? reps = null,
    Object? notes = freezed,
  }) {
    return _then(_$PercentPrescriptionImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PercentPrescriptionImpl implements PercentPrescription {
  const _$PercentPrescriptionImpl(
      {required this.target,
      required this.sets,
      required this.reps,
      this.notes,
      final String? $type})
      : $type = $type ?? 'percent';

  factory _$PercentPrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PercentPrescriptionImplFromJson(json);

  @override
  final double target;
  @override
  final int sets;
  @override
  final int reps;
  @override
  final String? notes;

  @JsonKey(name: 'scheme')
  final String $type;

  @override
  String toString() {
    return 'Prescription.percent(target: $target, sets: $sets, reps: $reps, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PercentPrescriptionImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, sets, reps, notes);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PercentPrescriptionImplCopyWith<_$PercentPrescriptionImpl> get copyWith =>
      __$$PercentPrescriptionImplCopyWithImpl<_$PercentPrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double target, int sets, int reps, String? notes)
        percent,
    required TResult Function(double target, int sets, int reps, String? notes)
        rpe,
    required TResult Function(double target, int sets, int reps, String? notes)
        weight,
    required TResult Function(
            double target, int sets, int minReps, String? notes)
        amrap,
  }) {
    return percent(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double target, int sets, int reps, String? notes)?
        percent,
    TResult? Function(double target, int sets, int reps, String? notes)? rpe,
    TResult? Function(double target, int sets, int reps, String? notes)? weight,
    TResult? Function(double target, int sets, int minReps, String? notes)?
        amrap,
  }) {
    return percent?.call(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double target, int sets, int reps, String? notes)? percent,
    TResult Function(double target, int sets, int reps, String? notes)? rpe,
    TResult Function(double target, int sets, int reps, String? notes)? weight,
    TResult Function(double target, int sets, int minReps, String? notes)?
        amrap,
    required TResult orElse(),
  }) {
    if (percent != null) {
      return percent(target, sets, reps, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PercentPrescription value) percent,
    required TResult Function(RpePrescription value) rpe,
    required TResult Function(WeightPrescription value) weight,
    required TResult Function(AmrapPrescription value) amrap,
  }) {
    return percent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PercentPrescription value)? percent,
    TResult? Function(RpePrescription value)? rpe,
    TResult? Function(WeightPrescription value)? weight,
    TResult? Function(AmrapPrescription value)? amrap,
  }) {
    return percent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PercentPrescription value)? percent,
    TResult Function(RpePrescription value)? rpe,
    TResult Function(WeightPrescription value)? weight,
    TResult Function(AmrapPrescription value)? amrap,
    required TResult orElse(),
  }) {
    if (percent != null) {
      return percent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PercentPrescriptionImplToJson(
      this,
    );
  }
}

abstract class PercentPrescription implements Prescription {
  const factory PercentPrescription(
      {required final double target,
      required final int sets,
      required final int reps,
      final String? notes}) = _$PercentPrescriptionImpl;

  factory PercentPrescription.fromJson(Map<String, dynamic> json) =
      _$PercentPrescriptionImpl.fromJson;

  @override
  double get target;
  @override
  int get sets;
  int get reps;
  @override
  String? get notes;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PercentPrescriptionImplCopyWith<_$PercentPrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RpePrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$RpePrescriptionImplCopyWith(_$RpePrescriptionImpl value,
          $Res Function(_$RpePrescriptionImpl) then) =
      __$$RpePrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double target, int sets, int reps, String? notes});
}

/// @nodoc
class __$$RpePrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$RpePrescriptionImpl>
    implements _$$RpePrescriptionImplCopyWith<$Res> {
  __$$RpePrescriptionImplCopyWithImpl(
      _$RpePrescriptionImpl _value, $Res Function(_$RpePrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? sets = null,
    Object? reps = null,
    Object? notes = freezed,
  }) {
    return _then(_$RpePrescriptionImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RpePrescriptionImpl implements RpePrescription {
  const _$RpePrescriptionImpl(
      {required this.target,
      required this.sets,
      required this.reps,
      this.notes,
      final String? $type})
      : $type = $type ?? 'rpe';

  factory _$RpePrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RpePrescriptionImplFromJson(json);

  @override
  final double target;
  @override
  final int sets;
  @override
  final int reps;
  @override
  final String? notes;

  @JsonKey(name: 'scheme')
  final String $type;

  @override
  String toString() {
    return 'Prescription.rpe(target: $target, sets: $sets, reps: $reps, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RpePrescriptionImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, sets, reps, notes);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RpePrescriptionImplCopyWith<_$RpePrescriptionImpl> get copyWith =>
      __$$RpePrescriptionImplCopyWithImpl<_$RpePrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double target, int sets, int reps, String? notes)
        percent,
    required TResult Function(double target, int sets, int reps, String? notes)
        rpe,
    required TResult Function(double target, int sets, int reps, String? notes)
        weight,
    required TResult Function(
            double target, int sets, int minReps, String? notes)
        amrap,
  }) {
    return rpe(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double target, int sets, int reps, String? notes)?
        percent,
    TResult? Function(double target, int sets, int reps, String? notes)? rpe,
    TResult? Function(double target, int sets, int reps, String? notes)? weight,
    TResult? Function(double target, int sets, int minReps, String? notes)?
        amrap,
  }) {
    return rpe?.call(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double target, int sets, int reps, String? notes)? percent,
    TResult Function(double target, int sets, int reps, String? notes)? rpe,
    TResult Function(double target, int sets, int reps, String? notes)? weight,
    TResult Function(double target, int sets, int minReps, String? notes)?
        amrap,
    required TResult orElse(),
  }) {
    if (rpe != null) {
      return rpe(target, sets, reps, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PercentPrescription value) percent,
    required TResult Function(RpePrescription value) rpe,
    required TResult Function(WeightPrescription value) weight,
    required TResult Function(AmrapPrescription value) amrap,
  }) {
    return rpe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PercentPrescription value)? percent,
    TResult? Function(RpePrescription value)? rpe,
    TResult? Function(WeightPrescription value)? weight,
    TResult? Function(AmrapPrescription value)? amrap,
  }) {
    return rpe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PercentPrescription value)? percent,
    TResult Function(RpePrescription value)? rpe,
    TResult Function(WeightPrescription value)? weight,
    TResult Function(AmrapPrescription value)? amrap,
    required TResult orElse(),
  }) {
    if (rpe != null) {
      return rpe(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RpePrescriptionImplToJson(
      this,
    );
  }
}

abstract class RpePrescription implements Prescription {
  const factory RpePrescription(
      {required final double target,
      required final int sets,
      required final int reps,
      final String? notes}) = _$RpePrescriptionImpl;

  factory RpePrescription.fromJson(Map<String, dynamic> json) =
      _$RpePrescriptionImpl.fromJson;

  @override
  double get target;
  @override
  int get sets;
  int get reps;
  @override
  String? get notes;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RpePrescriptionImplCopyWith<_$RpePrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeightPrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$WeightPrescriptionImplCopyWith(_$WeightPrescriptionImpl value,
          $Res Function(_$WeightPrescriptionImpl) then) =
      __$$WeightPrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double target, int sets, int reps, String? notes});
}

/// @nodoc
class __$$WeightPrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$WeightPrescriptionImpl>
    implements _$$WeightPrescriptionImplCopyWith<$Res> {
  __$$WeightPrescriptionImplCopyWithImpl(_$WeightPrescriptionImpl _value,
      $Res Function(_$WeightPrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? sets = null,
    Object? reps = null,
    Object? notes = freezed,
  }) {
    return _then(_$WeightPrescriptionImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightPrescriptionImpl implements WeightPrescription {
  const _$WeightPrescriptionImpl(
      {required this.target,
      required this.sets,
      required this.reps,
      this.notes,
      final String? $type})
      : $type = $type ?? 'weight';

  factory _$WeightPrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightPrescriptionImplFromJson(json);

  @override
  final double target;
  @override
  final int sets;
  @override
  final int reps;
  @override
  final String? notes;

  @JsonKey(name: 'scheme')
  final String $type;

  @override
  String toString() {
    return 'Prescription.weight(target: $target, sets: $sets, reps: $reps, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightPrescriptionImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, sets, reps, notes);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightPrescriptionImplCopyWith<_$WeightPrescriptionImpl> get copyWith =>
      __$$WeightPrescriptionImplCopyWithImpl<_$WeightPrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double target, int sets, int reps, String? notes)
        percent,
    required TResult Function(double target, int sets, int reps, String? notes)
        rpe,
    required TResult Function(double target, int sets, int reps, String? notes)
        weight,
    required TResult Function(
            double target, int sets, int minReps, String? notes)
        amrap,
  }) {
    return weight(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double target, int sets, int reps, String? notes)?
        percent,
    TResult? Function(double target, int sets, int reps, String? notes)? rpe,
    TResult? Function(double target, int sets, int reps, String? notes)? weight,
    TResult? Function(double target, int sets, int minReps, String? notes)?
        amrap,
  }) {
    return weight?.call(target, sets, reps, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double target, int sets, int reps, String? notes)? percent,
    TResult Function(double target, int sets, int reps, String? notes)? rpe,
    TResult Function(double target, int sets, int reps, String? notes)? weight,
    TResult Function(double target, int sets, int minReps, String? notes)?
        amrap,
    required TResult orElse(),
  }) {
    if (weight != null) {
      return weight(target, sets, reps, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PercentPrescription value) percent,
    required TResult Function(RpePrescription value) rpe,
    required TResult Function(WeightPrescription value) weight,
    required TResult Function(AmrapPrescription value) amrap,
  }) {
    return weight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PercentPrescription value)? percent,
    TResult? Function(RpePrescription value)? rpe,
    TResult? Function(WeightPrescription value)? weight,
    TResult? Function(AmrapPrescription value)? amrap,
  }) {
    return weight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PercentPrescription value)? percent,
    TResult Function(RpePrescription value)? rpe,
    TResult Function(WeightPrescription value)? weight,
    TResult Function(AmrapPrescription value)? amrap,
    required TResult orElse(),
  }) {
    if (weight != null) {
      return weight(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightPrescriptionImplToJson(
      this,
    );
  }
}

abstract class WeightPrescription implements Prescription {
  const factory WeightPrescription(
      {required final double target,
      required final int sets,
      required final int reps,
      final String? notes}) = _$WeightPrescriptionImpl;

  factory WeightPrescription.fromJson(Map<String, dynamic> json) =
      _$WeightPrescriptionImpl.fromJson;

  @override
  double get target;
  @override
  int get sets;
  int get reps;
  @override
  String? get notes;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightPrescriptionImplCopyWith<_$WeightPrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmrapPrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$AmrapPrescriptionImplCopyWith(_$AmrapPrescriptionImpl value,
          $Res Function(_$AmrapPrescriptionImpl) then) =
      __$$AmrapPrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double target, int sets, int minReps, String? notes});
}

/// @nodoc
class __$$AmrapPrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$AmrapPrescriptionImpl>
    implements _$$AmrapPrescriptionImplCopyWith<$Res> {
  __$$AmrapPrescriptionImplCopyWithImpl(_$AmrapPrescriptionImpl _value,
      $Res Function(_$AmrapPrescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? sets = null,
    Object? minReps = null,
    Object? notes = freezed,
  }) {
    return _then(_$AmrapPrescriptionImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      minReps: null == minReps
          ? _value.minReps
          : minReps // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmrapPrescriptionImpl implements AmrapPrescription {
  const _$AmrapPrescriptionImpl(
      {required this.target,
      required this.sets,
      required this.minReps,
      this.notes,
      final String? $type})
      : $type = $type ?? 'amrap';

  factory _$AmrapPrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmrapPrescriptionImplFromJson(json);

  @override
  final double target;
  @override
  final int sets;
  @override
  final int minReps;
  @override
  final String? notes;

  @JsonKey(name: 'scheme')
  final String $type;

  @override
  String toString() {
    return 'Prescription.amrap(target: $target, sets: $sets, minReps: $minReps, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmrapPrescriptionImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.minReps, minReps) || other.minReps == minReps) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, target, sets, minReps, notes);

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmrapPrescriptionImplCopyWith<_$AmrapPrescriptionImpl> get copyWith =>
      __$$AmrapPrescriptionImplCopyWithImpl<_$AmrapPrescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double target, int sets, int reps, String? notes)
        percent,
    required TResult Function(double target, int sets, int reps, String? notes)
        rpe,
    required TResult Function(double target, int sets, int reps, String? notes)
        weight,
    required TResult Function(
            double target, int sets, int minReps, String? notes)
        amrap,
  }) {
    return amrap(target, sets, minReps, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double target, int sets, int reps, String? notes)?
        percent,
    TResult? Function(double target, int sets, int reps, String? notes)? rpe,
    TResult? Function(double target, int sets, int reps, String? notes)? weight,
    TResult? Function(double target, int sets, int minReps, String? notes)?
        amrap,
  }) {
    return amrap?.call(target, sets, minReps, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double target, int sets, int reps, String? notes)? percent,
    TResult Function(double target, int sets, int reps, String? notes)? rpe,
    TResult Function(double target, int sets, int reps, String? notes)? weight,
    TResult Function(double target, int sets, int minReps, String? notes)?
        amrap,
    required TResult orElse(),
  }) {
    if (amrap != null) {
      return amrap(target, sets, minReps, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PercentPrescription value) percent,
    required TResult Function(RpePrescription value) rpe,
    required TResult Function(WeightPrescription value) weight,
    required TResult Function(AmrapPrescription value) amrap,
  }) {
    return amrap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PercentPrescription value)? percent,
    TResult? Function(RpePrescription value)? rpe,
    TResult? Function(WeightPrescription value)? weight,
    TResult? Function(AmrapPrescription value)? amrap,
  }) {
    return amrap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PercentPrescription value)? percent,
    TResult Function(RpePrescription value)? rpe,
    TResult Function(WeightPrescription value)? weight,
    TResult Function(AmrapPrescription value)? amrap,
    required TResult orElse(),
  }) {
    if (amrap != null) {
      return amrap(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AmrapPrescriptionImplToJson(
      this,
    );
  }
}

abstract class AmrapPrescription implements Prescription {
  const factory AmrapPrescription(
      {required final double target,
      required final int sets,
      required final int minReps,
      final String? notes}) = _$AmrapPrescriptionImpl;

  factory AmrapPrescription.fromJson(Map<String, dynamic> json) =
      _$AmrapPrescriptionImpl.fromJson;

  @override
  double get target;
  @override
  int get sets;
  int get minReps;
  @override
  String? get notes;

  /// Create a copy of Prescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmrapPrescriptionImplCopyWith<_$AmrapPrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
