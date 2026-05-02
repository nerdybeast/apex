// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lift _$LiftFromJson(Map<String, dynamic> json) {
  return _Lift.fromJson(json);
}

/// @nodoc
mixin _$Lift {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Sport get sport => throw _privateConstructorUsedError;
  LiftCategory get category => throw _privateConstructorUsedError;
  String? get parentLiftId => throw _privateConstructorUsedError;

  /// Serializes this Lift to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiftCopyWith<Lift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiftCopyWith<$Res> {
  factory $LiftCopyWith(Lift value, $Res Function(Lift) then) =
      _$LiftCopyWithImpl<$Res, Lift>;
  @useResult
  $Res call(
      {String id,
      String name,
      Sport sport,
      LiftCategory category,
      String? parentLiftId});
}

/// @nodoc
class _$LiftCopyWithImpl<$Res, $Val extends Lift>
    implements $LiftCopyWith<$Res> {
  _$LiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sport = null,
    Object? category = null,
    Object? parentLiftId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as LiftCategory,
      parentLiftId: freezed == parentLiftId
          ? _value.parentLiftId
          : parentLiftId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiftImplCopyWith<$Res> implements $LiftCopyWith<$Res> {
  factory _$$LiftImplCopyWith(
          _$LiftImpl value, $Res Function(_$LiftImpl) then) =
      __$$LiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Sport sport,
      LiftCategory category,
      String? parentLiftId});
}

/// @nodoc
class __$$LiftImplCopyWithImpl<$Res>
    extends _$LiftCopyWithImpl<$Res, _$LiftImpl>
    implements _$$LiftImplCopyWith<$Res> {
  __$$LiftImplCopyWithImpl(_$LiftImpl _value, $Res Function(_$LiftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sport = null,
    Object? category = null,
    Object? parentLiftId = freezed,
  }) {
    return _then(_$LiftImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as LiftCategory,
      parentLiftId: freezed == parentLiftId
          ? _value.parentLiftId
          : parentLiftId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiftImpl implements _Lift {
  const _$LiftImpl(
      {required this.id,
      required this.name,
      required this.sport,
      required this.category,
      this.parentLiftId});

  factory _$LiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiftImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Sport sport;
  @override
  final LiftCategory category;
  @override
  final String? parentLiftId;

  @override
  String toString() {
    return 'Lift(id: $id, name: $name, sport: $sport, category: $category, parentLiftId: $parentLiftId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.parentLiftId, parentLiftId) ||
                other.parentLiftId == parentLiftId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, sport, category, parentLiftId);

  /// Create a copy of Lift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiftImplCopyWith<_$LiftImpl> get copyWith =>
      __$$LiftImplCopyWithImpl<_$LiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LiftImplToJson(
      this,
    );
  }
}

abstract class _Lift implements Lift {
  const factory _Lift(
      {required final String id,
      required final String name,
      required final Sport sport,
      required final LiftCategory category,
      final String? parentLiftId}) = _$LiftImpl;

  factory _Lift.fromJson(Map<String, dynamic> json) = _$LiftImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Sport get sport;
  @override
  LiftCategory get category;
  @override
  String? get parentLiftId;

  /// Create a copy of Lift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiftImplCopyWith<_$LiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
