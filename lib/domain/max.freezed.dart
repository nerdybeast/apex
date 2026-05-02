// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'max.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Max _$MaxFromJson(Map<String, dynamic> json) {
  return _Max.fromJson(json);
}

/// @nodoc
mixin _$Max {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get liftId => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  MaxKind get kind => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String? get sourceSessionId => throw _privateConstructorUsedError;

  /// Serializes this Max to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Max
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaxCopyWith<Max> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaxCopyWith<$Res> {
  factory $MaxCopyWith(Max value, $Res Function(Max) then) =
      _$MaxCopyWithImpl<$Res, Max>;
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String liftId,
      double value,
      MaxKind kind,
      @TimestampConverter() DateTime date,
      String? sourceSessionId});
}

/// @nodoc
class _$MaxCopyWithImpl<$Res, $Val extends Max> implements $MaxCopyWith<$Res> {
  _$MaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Max
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? liftId = null,
    Object? value = null,
    Object? kind = null,
    Object? date = null,
    Object? sourceSessionId = freezed,
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
      liftId: null == liftId
          ? _value.liftId
          : liftId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as MaxKind,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sourceSessionId: freezed == sourceSessionId
          ? _value.sourceSessionId
          : sourceSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaxImplCopyWith<$Res> implements $MaxCopyWith<$Res> {
  factory _$$MaxImplCopyWith(_$MaxImpl value, $Res Function(_$MaxImpl) then) =
      __$$MaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String liftId,
      double value,
      MaxKind kind,
      @TimestampConverter() DateTime date,
      String? sourceSessionId});
}

/// @nodoc
class __$$MaxImplCopyWithImpl<$Res> extends _$MaxCopyWithImpl<$Res, _$MaxImpl>
    implements _$$MaxImplCopyWith<$Res> {
  __$$MaxImplCopyWithImpl(_$MaxImpl _value, $Res Function(_$MaxImpl) _then)
      : super(_value, _then);

  /// Create a copy of Max
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? liftId = null,
    Object? value = null,
    Object? kind = null,
    Object? date = null,
    Object? sourceSessionId = freezed,
  }) {
    return _then(_$MaxImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      liftId: null == liftId
          ? _value.liftId
          : liftId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as MaxKind,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sourceSessionId: freezed == sourceSessionId
          ? _value.sourceSessionId
          : sourceSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaxImpl implements _Max {
  const _$MaxImpl(
      {required this.id,
      required this.ownerId,
      required this.liftId,
      required this.value,
      required this.kind,
      @TimestampConverter() required this.date,
      this.sourceSessionId});

  factory _$MaxImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaxImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String liftId;
  @override
  final double value;
  @override
  final MaxKind kind;
  @override
  @TimestampConverter()
  final DateTime date;
  @override
  final String? sourceSessionId;

  @override
  String toString() {
    return 'Max(id: $id, ownerId: $ownerId, liftId: $liftId, value: $value, kind: $kind, date: $date, sourceSessionId: $sourceSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.liftId, liftId) || other.liftId == liftId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.sourceSessionId, sourceSessionId) ||
                other.sourceSessionId == sourceSessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ownerId, liftId, value, kind, date, sourceSessionId);

  /// Create a copy of Max
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxImplCopyWith<_$MaxImpl> get copyWith =>
      __$$MaxImplCopyWithImpl<_$MaxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaxImplToJson(
      this,
    );
  }
}

abstract class _Max implements Max {
  const factory _Max(
      {required final String id,
      required final String ownerId,
      required final String liftId,
      required final double value,
      required final MaxKind kind,
      @TimestampConverter() required final DateTime date,
      final String? sourceSessionId}) = _$MaxImpl;

  factory _Max.fromJson(Map<String, dynamic> json) = _$MaxImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String get liftId;
  @override
  double get value;
  @override
  MaxKind get kind;
  @override
  @TimestampConverter()
  DateTime get date;
  @override
  String? get sourceSessionId;

  /// Create a copy of Max
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaxImplCopyWith<_$MaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
