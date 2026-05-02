// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  Units get units => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  Sport? get sport => throw _privateConstructorUsedError;
  String? get federation => throw _privateConstructorUsedError;
  String? get weightClass => throw _privateConstructorUsedError;
  List<BodyweightEntry> get bodyweightLog => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String uid,
      String displayName,
      Units units,
      Sex sex,
      UserRole role,
      Sport? sport,
      String? federation,
      String? weightClass,
      List<BodyweightEntry> bodyweightLog});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? units = null,
    Object? sex = null,
    Object? role = null,
    Object? sport = freezed,
    Object? federation = freezed,
    Object? weightClass = freezed,
    Object? bodyweightLog = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as Units,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport?,
      federation: freezed == federation
          ? _value.federation
          : federation // ignore: cast_nullable_to_non_nullable
              as String?,
      weightClass: freezed == weightClass
          ? _value.weightClass
          : weightClass // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyweightLog: null == bodyweightLog
          ? _value.bodyweightLog
          : bodyweightLog // ignore: cast_nullable_to_non_nullable
              as List<BodyweightEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String displayName,
      Units units,
      Sex sex,
      UserRole role,
      Sport? sport,
      String? federation,
      String? weightClass,
      List<BodyweightEntry> bodyweightLog});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? units = null,
    Object? sex = null,
    Object? role = null,
    Object? sport = freezed,
    Object? federation = freezed,
    Object? weightClass = freezed,
    Object? bodyweightLog = null,
  }) {
    return _then(_$UserProfileImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as Units,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      sport: freezed == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport?,
      federation: freezed == federation
          ? _value.federation
          : federation // ignore: cast_nullable_to_non_nullable
              as String?,
      weightClass: freezed == weightClass
          ? _value.weightClass
          : weightClass // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyweightLog: null == bodyweightLog
          ? _value._bodyweightLog
          : bodyweightLog // ignore: cast_nullable_to_non_nullable
              as List<BodyweightEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.uid,
      required this.displayName,
      required this.units,
      required this.sex,
      required this.role,
      this.sport,
      this.federation,
      this.weightClass,
      final List<BodyweightEntry> bodyweightLog = const <BodyweightEntry>[]})
      : _bodyweightLog = bodyweightLog;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String uid;
  @override
  final String displayName;
  @override
  final Units units;
  @override
  final Sex sex;
  @override
  final UserRole role;
  @override
  final Sport? sport;
  @override
  final String? federation;
  @override
  final String? weightClass;
  final List<BodyweightEntry> _bodyweightLog;
  @override
  @JsonKey()
  List<BodyweightEntry> get bodyweightLog {
    if (_bodyweightLog is EqualUnmodifiableListView) return _bodyweightLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bodyweightLog);
  }

  @override
  String toString() {
    return 'UserProfile(uid: $uid, displayName: $displayName, units: $units, sex: $sex, role: $role, sport: $sport, federation: $federation, weightClass: $weightClass, bodyweightLog: $bodyweightLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.federation, federation) ||
                other.federation == federation) &&
            (identical(other.weightClass, weightClass) ||
                other.weightClass == weightClass) &&
            const DeepCollectionEquality()
                .equals(other._bodyweightLog, _bodyweightLog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      displayName,
      units,
      sex,
      role,
      sport,
      federation,
      weightClass,
      const DeepCollectionEquality().hash(_bodyweightLog));

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String uid,
      required final String displayName,
      required final Units units,
      required final Sex sex,
      required final UserRole role,
      final Sport? sport,
      final String? federation,
      final String? weightClass,
      final List<BodyweightEntry> bodyweightLog}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get uid;
  @override
  String get displayName;
  @override
  Units get units;
  @override
  Sex get sex;
  @override
  UserRole get role;
  @override
  Sport? get sport;
  @override
  String? get federation;
  @override
  String? get weightClass;
  @override
  List<BodyweightEntry> get bodyweightLog;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyweightEntry _$BodyweightEntryFromJson(Map<String, dynamic> json) {
  return _BodyweightEntry.fromJson(json);
}

/// @nodoc
mixin _$BodyweightEntry {
  @TimestampConverter()
  DateTime get date => throw _privateConstructorUsedError;
  double get kg => throw _privateConstructorUsedError;

  /// Serializes this BodyweightEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyweightEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyweightEntryCopyWith<BodyweightEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyweightEntryCopyWith<$Res> {
  factory $BodyweightEntryCopyWith(
          BodyweightEntry value, $Res Function(BodyweightEntry) then) =
      _$BodyweightEntryCopyWithImpl<$Res, BodyweightEntry>;
  @useResult
  $Res call({@TimestampConverter() DateTime date, double kg});
}

/// @nodoc
class _$BodyweightEntryCopyWithImpl<$Res, $Val extends BodyweightEntry>
    implements $BodyweightEntryCopyWith<$Res> {
  _$BodyweightEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyweightEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? kg = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyweightEntryImplCopyWith<$Res>
    implements $BodyweightEntryCopyWith<$Res> {
  factory _$$BodyweightEntryImplCopyWith(_$BodyweightEntryImpl value,
          $Res Function(_$BodyweightEntryImpl) then) =
      __$$BodyweightEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TimestampConverter() DateTime date, double kg});
}

/// @nodoc
class __$$BodyweightEntryImplCopyWithImpl<$Res>
    extends _$BodyweightEntryCopyWithImpl<$Res, _$BodyweightEntryImpl>
    implements _$$BodyweightEntryImplCopyWith<$Res> {
  __$$BodyweightEntryImplCopyWithImpl(
      _$BodyweightEntryImpl _value, $Res Function(_$BodyweightEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyweightEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? kg = null,
  }) {
    return _then(_$BodyweightEntryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyweightEntryImpl implements _BodyweightEntry {
  const _$BodyweightEntryImpl(
      {@TimestampConverter() required this.date, required this.kg});

  factory _$BodyweightEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyweightEntryImplFromJson(json);

  @override
  @TimestampConverter()
  final DateTime date;
  @override
  final double kg;

  @override
  String toString() {
    return 'BodyweightEntry(date: $date, kg: $kg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyweightEntryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.kg, kg) || other.kg == kg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, kg);

  /// Create a copy of BodyweightEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyweightEntryImplCopyWith<_$BodyweightEntryImpl> get copyWith =>
      __$$BodyweightEntryImplCopyWithImpl<_$BodyweightEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyweightEntryImplToJson(
      this,
    );
  }
}

abstract class _BodyweightEntry implements BodyweightEntry {
  const factory _BodyweightEntry(
      {@TimestampConverter() required final DateTime date,
      required final double kg}) = _$BodyweightEntryImpl;

  factory _BodyweightEntry.fromJson(Map<String, dynamic> json) =
      _$BodyweightEntryImpl.fromJson;

  @override
  @TimestampConverter()
  DateTime get date;
  @override
  double get kg;

  /// Create a copy of BodyweightEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyweightEntryImplCopyWith<_$BodyweightEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
