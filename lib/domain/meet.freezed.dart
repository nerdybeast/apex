// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meet _$MeetFromJson(Map<String, dynamic> json) {
  return _Meet.fromJson(json);
}

/// @nodoc
mixin _$Meet {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String? get blockId => throw _privateConstructorUsedError;
  String get federation => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String get weightClass => throw _privateConstructorUsedError;
  Sport get sport => throw _privateConstructorUsedError;

  /// Powerlifting attempts. Keyed by `squat`, `bench`, `deadlift`. Empty
  /// for OL meets.
  Map<String, List<Attempt>> get plAttempts =>
      throw _privateConstructorUsedError;

  /// Olympic attempts. Keyed by `snatch`, `cleanAndJerk`. Empty for PL.
  Map<String, List<Attempt>> get olAttempts =>
      throw _privateConstructorUsedError;

  /// Serializes this Meet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetCopyWith<Meet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetCopyWith<$Res> {
  factory $MeetCopyWith(Meet value, $Res Function(Meet) then) =
      _$MeetCopyWithImpl<$Res, Meet>;
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String? blockId,
      String federation,
      @TimestampConverter() DateTime date,
      String weightClass,
      Sport sport,
      Map<String, List<Attempt>> plAttempts,
      Map<String, List<Attempt>> olAttempts});
}

/// @nodoc
class _$MeetCopyWithImpl<$Res, $Val extends Meet>
    implements $MeetCopyWith<$Res> {
  _$MeetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? blockId = freezed,
    Object? federation = null,
    Object? date = null,
    Object? weightClass = null,
    Object? sport = null,
    Object? plAttempts = null,
    Object? olAttempts = null,
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
      blockId: freezed == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String?,
      federation: null == federation
          ? _value.federation
          : federation // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weightClass: null == weightClass
          ? _value.weightClass
          : weightClass // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      plAttempts: null == plAttempts
          ? _value.plAttempts
          : plAttempts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attempt>>,
      olAttempts: null == olAttempts
          ? _value.olAttempts
          : olAttempts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attempt>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetImplCopyWith<$Res> implements $MeetCopyWith<$Res> {
  factory _$$MeetImplCopyWith(
          _$MeetImpl value, $Res Function(_$MeetImpl) then) =
      __$$MeetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String? blockId,
      String federation,
      @TimestampConverter() DateTime date,
      String weightClass,
      Sport sport,
      Map<String, List<Attempt>> plAttempts,
      Map<String, List<Attempt>> olAttempts});
}

/// @nodoc
class __$$MeetImplCopyWithImpl<$Res>
    extends _$MeetCopyWithImpl<$Res, _$MeetImpl>
    implements _$$MeetImplCopyWith<$Res> {
  __$$MeetImplCopyWithImpl(_$MeetImpl _value, $Res Function(_$MeetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? blockId = freezed,
    Object? federation = null,
    Object? date = null,
    Object? weightClass = null,
    Object? sport = null,
    Object? plAttempts = null,
    Object? olAttempts = null,
  }) {
    return _then(_$MeetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockId: freezed == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String?,
      federation: null == federation
          ? _value.federation
          : federation // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weightClass: null == weightClass
          ? _value.weightClass
          : weightClass // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      plAttempts: null == plAttempts
          ? _value._plAttempts
          : plAttempts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attempt>>,
      olAttempts: null == olAttempts
          ? _value._olAttempts
          : olAttempts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Attempt>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetImpl implements _Meet {
  const _$MeetImpl(
      {required this.id,
      required this.ownerId,
      this.blockId,
      required this.federation,
      @TimestampConverter() required this.date,
      required this.weightClass,
      required this.sport,
      final Map<String, List<Attempt>> plAttempts =
          const <String, List<Attempt>>{},
      final Map<String, List<Attempt>> olAttempts =
          const <String, List<Attempt>>{}})
      : _plAttempts = plAttempts,
        _olAttempts = olAttempts;

  factory _$MeetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String? blockId;
  @override
  final String federation;
  @override
  @TimestampConverter()
  final DateTime date;
  @override
  final String weightClass;
  @override
  final Sport sport;

  /// Powerlifting attempts. Keyed by `squat`, `bench`, `deadlift`. Empty
  /// for OL meets.
  final Map<String, List<Attempt>> _plAttempts;

  /// Powerlifting attempts. Keyed by `squat`, `bench`, `deadlift`. Empty
  /// for OL meets.
  @override
  @JsonKey()
  Map<String, List<Attempt>> get plAttempts {
    if (_plAttempts is EqualUnmodifiableMapView) return _plAttempts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_plAttempts);
  }

  /// Olympic attempts. Keyed by `snatch`, `cleanAndJerk`. Empty for PL.
  final Map<String, List<Attempt>> _olAttempts;

  /// Olympic attempts. Keyed by `snatch`, `cleanAndJerk`. Empty for PL.
  @override
  @JsonKey()
  Map<String, List<Attempt>> get olAttempts {
    if (_olAttempts is EqualUnmodifiableMapView) return _olAttempts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_olAttempts);
  }

  @override
  String toString() {
    return 'Meet(id: $id, ownerId: $ownerId, blockId: $blockId, federation: $federation, date: $date, weightClass: $weightClass, sport: $sport, plAttempts: $plAttempts, olAttempts: $olAttempts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.blockId, blockId) || other.blockId == blockId) &&
            (identical(other.federation, federation) ||
                other.federation == federation) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weightClass, weightClass) ||
                other.weightClass == weightClass) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            const DeepCollectionEquality()
                .equals(other._plAttempts, _plAttempts) &&
            const DeepCollectionEquality()
                .equals(other._olAttempts, _olAttempts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      blockId,
      federation,
      date,
      weightClass,
      sport,
      const DeepCollectionEquality().hash(_plAttempts),
      const DeepCollectionEquality().hash(_olAttempts));

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      __$$MeetImplCopyWithImpl<_$MeetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetImplToJson(
      this,
    );
  }
}

abstract class _Meet implements Meet {
  const factory _Meet(
      {required final String id,
      required final String ownerId,
      final String? blockId,
      required final String federation,
      @TimestampConverter() required final DateTime date,
      required final String weightClass,
      required final Sport sport,
      final Map<String, List<Attempt>> plAttempts,
      final Map<String, List<Attempt>> olAttempts}) = _$MeetImpl;

  factory _Meet.fromJson(Map<String, dynamic> json) = _$MeetImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String? get blockId;
  @override
  String get federation;
  @override
  @TimestampConverter()
  DateTime get date;
  @override
  String get weightClass;
  @override
  Sport get sport;

  /// Powerlifting attempts. Keyed by `squat`, `bench`, `deadlift`. Empty
  /// for OL meets.
  @override
  Map<String, List<Attempt>> get plAttempts;

  /// Olympic attempts. Keyed by `snatch`, `cleanAndJerk`. Empty for PL.
  @override
  Map<String, List<Attempt>> get olAttempts;

  /// Create a copy of Meet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attempt _$AttemptFromJson(Map<String, dynamic> json) {
  return _Attempt.fromJson(json);
}

/// @nodoc
mixin _$Attempt {
  double get weight => throw _privateConstructorUsedError;
  AttemptStatus get status => throw _privateConstructorUsedError;

  /// Serializes this Attempt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttemptCopyWith<Attempt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttemptCopyWith<$Res> {
  factory $AttemptCopyWith(Attempt value, $Res Function(Attempt) then) =
      _$AttemptCopyWithImpl<$Res, Attempt>;
  @useResult
  $Res call({double weight, AttemptStatus status});
}

/// @nodoc
class _$AttemptCopyWithImpl<$Res, $Val extends Attempt>
    implements $AttemptCopyWith<$Res> {
  _$AttemptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttemptStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttemptImplCopyWith<$Res> implements $AttemptCopyWith<$Res> {
  factory _$$AttemptImplCopyWith(
          _$AttemptImpl value, $Res Function(_$AttemptImpl) then) =
      __$$AttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double weight, AttemptStatus status});
}

/// @nodoc
class __$$AttemptImplCopyWithImpl<$Res>
    extends _$AttemptCopyWithImpl<$Res, _$AttemptImpl>
    implements _$$AttemptImplCopyWith<$Res> {
  __$$AttemptImplCopyWithImpl(
      _$AttemptImpl _value, $Res Function(_$AttemptImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attempt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? status = null,
  }) {
    return _then(_$AttemptImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttemptStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttemptImpl implements _Attempt {
  const _$AttemptImpl({required this.weight, required this.status});

  factory _$AttemptImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttemptImplFromJson(json);

  @override
  final double weight;
  @override
  final AttemptStatus status;

  @override
  String toString() {
    return 'Attempt(weight: $weight, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttemptImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weight, status);

  /// Create a copy of Attempt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttemptImplCopyWith<_$AttemptImpl> get copyWith =>
      __$$AttemptImplCopyWithImpl<_$AttemptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttemptImplToJson(
      this,
    );
  }
}

abstract class _Attempt implements Attempt {
  const factory _Attempt(
      {required final double weight,
      required final AttemptStatus status}) = _$AttemptImpl;

  factory _Attempt.fromJson(Map<String, dynamic> json) = _$AttemptImpl.fromJson;

  @override
  double get weight;
  @override
  AttemptStatus get status;

  /// Create a copy of Attempt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttemptImplCopyWith<_$AttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
