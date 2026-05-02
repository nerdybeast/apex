// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Block _$BlockFromJson(Map<String, dynamic> json) {
  return _Block.fromJson(json);
}

/// @nodoc
mixin _$Block {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get athleteId => throw _privateConstructorUsedError;
  String? get templateId => throw _privateConstructorUsedError;
  Sport get sport => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @NullableTimestampConverter()
  DateTime? get meetDate => throw _privateConstructorUsedError;

  /// Map of liftId -> training max (in user's units at the time the block
  /// was started). Edits to this map only affect this block; they don't
  /// bleed back to the template or other blocks.
  Map<String, double> get trainingMaxes => throw _privateConstructorUsedError;
  BlockStatus get status => throw _privateConstructorUsedError;

  /// Snapshot of the template's weeks at the time the block was started.
  List<TemplateWeek> get weeks => throw _privateConstructorUsedError;

  /// Serializes this Block to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockCopyWith<Block> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockCopyWith<$Res> {
  factory $BlockCopyWith(Block value, $Res Function(Block) then) =
      _$BlockCopyWithImpl<$Res, Block>;
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String athleteId,
      String? templateId,
      Sport sport,
      String name,
      @TimestampConverter() DateTime startDate,
      @NullableTimestampConverter() DateTime? meetDate,
      Map<String, double> trainingMaxes,
      BlockStatus status,
      List<TemplateWeek> weeks});
}

/// @nodoc
class _$BlockCopyWithImpl<$Res, $Val extends Block>
    implements $BlockCopyWith<$Res> {
  _$BlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? athleteId = null,
    Object? templateId = freezed,
    Object? sport = null,
    Object? name = null,
    Object? startDate = null,
    Object? meetDate = freezed,
    Object? trainingMaxes = null,
    Object? status = null,
    Object? weeks = null,
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
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trainingMaxes: null == trainingMaxes
          ? _value.trainingMaxes
          : trainingMaxes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlockStatus,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<TemplateWeek>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockImplCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$$BlockImplCopyWith(
          _$BlockImpl value, $Res Function(_$BlockImpl) then) =
      __$$BlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String athleteId,
      String? templateId,
      Sport sport,
      String name,
      @TimestampConverter() DateTime startDate,
      @NullableTimestampConverter() DateTime? meetDate,
      Map<String, double> trainingMaxes,
      BlockStatus status,
      List<TemplateWeek> weeks});
}

/// @nodoc
class __$$BlockImplCopyWithImpl<$Res>
    extends _$BlockCopyWithImpl<$Res, _$BlockImpl>
    implements _$$BlockImplCopyWith<$Res> {
  __$$BlockImplCopyWithImpl(
      _$BlockImpl _value, $Res Function(_$BlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? athleteId = null,
    Object? templateId = freezed,
    Object? sport = null,
    Object? name = null,
    Object? startDate = null,
    Object? meetDate = freezed,
    Object? trainingMaxes = null,
    Object? status = null,
    Object? weeks = null,
  }) {
    return _then(_$BlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as String,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meetDate: freezed == meetDate
          ? _value.meetDate
          : meetDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trainingMaxes: null == trainingMaxes
          ? _value._trainingMaxes
          : trainingMaxes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlockStatus,
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<TemplateWeek>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockImpl implements _Block {
  const _$BlockImpl(
      {required this.id,
      required this.ownerId,
      required this.athleteId,
      this.templateId,
      required this.sport,
      required this.name,
      @TimestampConverter() required this.startDate,
      @NullableTimestampConverter() this.meetDate,
      required final Map<String, double> trainingMaxes,
      required this.status,
      required final List<TemplateWeek> weeks})
      : _trainingMaxes = trainingMaxes,
        _weeks = weeks;

  factory _$BlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String athleteId;
  @override
  final String? templateId;
  @override
  final Sport sport;
  @override
  final String name;
  @override
  @TimestampConverter()
  final DateTime startDate;
  @override
  @NullableTimestampConverter()
  final DateTime? meetDate;

  /// Map of liftId -> training max (in user's units at the time the block
  /// was started). Edits to this map only affect this block; they don't
  /// bleed back to the template or other blocks.
  final Map<String, double> _trainingMaxes;

  /// Map of liftId -> training max (in user's units at the time the block
  /// was started). Edits to this map only affect this block; they don't
  /// bleed back to the template or other blocks.
  @override
  Map<String, double> get trainingMaxes {
    if (_trainingMaxes is EqualUnmodifiableMapView) return _trainingMaxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trainingMaxes);
  }

  @override
  final BlockStatus status;

  /// Snapshot of the template's weeks at the time the block was started.
  final List<TemplateWeek> _weeks;

  /// Snapshot of the template's weeks at the time the block was started.
  @override
  List<TemplateWeek> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  String toString() {
    return 'Block(id: $id, ownerId: $ownerId, athleteId: $athleteId, templateId: $templateId, sport: $sport, name: $name, startDate: $startDate, meetDate: $meetDate, trainingMaxes: $trainingMaxes, status: $status, weeks: $weeks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.athleteId, athleteId) ||
                other.athleteId == athleteId) &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.meetDate, meetDate) ||
                other.meetDate == meetDate) &&
            const DeepCollectionEquality()
                .equals(other._trainingMaxes, _trainingMaxes) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._weeks, _weeks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      athleteId,
      templateId,
      sport,
      name,
      startDate,
      meetDate,
      const DeepCollectionEquality().hash(_trainingMaxes),
      status,
      const DeepCollectionEquality().hash(_weeks));

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockImplCopyWith<_$BlockImpl> get copyWith =>
      __$$BlockImplCopyWithImpl<_$BlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockImplToJson(
      this,
    );
  }
}

abstract class _Block implements Block {
  const factory _Block(
      {required final String id,
      required final String ownerId,
      required final String athleteId,
      final String? templateId,
      required final Sport sport,
      required final String name,
      @TimestampConverter() required final DateTime startDate,
      @NullableTimestampConverter() final DateTime? meetDate,
      required final Map<String, double> trainingMaxes,
      required final BlockStatus status,
      required final List<TemplateWeek> weeks}) = _$BlockImpl;

  factory _Block.fromJson(Map<String, dynamic> json) = _$BlockImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String get athleteId;
  @override
  String? get templateId;
  @override
  Sport get sport;
  @override
  String get name;
  @override
  @TimestampConverter()
  DateTime get startDate;
  @override
  @NullableTimestampConverter()
  DateTime? get meetDate;

  /// Map of liftId -> training max (in user's units at the time the block
  /// was started). Edits to this map only affect this block; they don't
  /// bleed back to the template or other blocks.
  @override
  Map<String, double> get trainingMaxes;
  @override
  BlockStatus get status;

  /// Snapshot of the template's weeks at the time the block was started.
  @override
  List<TemplateWeek> get weeks;

  /// Create a copy of Block
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockImplCopyWith<_$BlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
