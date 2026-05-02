// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgramTemplate _$ProgramTemplateFromJson(Map<String, dynamic> json) {
  return _ProgramTemplate.fromJson(json);
}

/// @nodoc
mixin _$ProgramTemplate {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String? get coachId => throw _privateConstructorUsedError;
  Sport get sport => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get lengthWeeks => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isPreloaded => throw _privateConstructorUsedError;
  List<TemplateWeek> get weeks => throw _privateConstructorUsedError;

  /// Serializes this ProgramTemplate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgramTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramTemplateCopyWith<ProgramTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramTemplateCopyWith<$Res> {
  factory $ProgramTemplateCopyWith(
          ProgramTemplate value, $Res Function(ProgramTemplate) then) =
      _$ProgramTemplateCopyWithImpl<$Res, ProgramTemplate>;
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String? coachId,
      Sport sport,
      String name,
      int lengthWeeks,
      String description,
      bool isPreloaded,
      List<TemplateWeek> weeks});
}

/// @nodoc
class _$ProgramTemplateCopyWithImpl<$Res, $Val extends ProgramTemplate>
    implements $ProgramTemplateCopyWith<$Res> {
  _$ProgramTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? coachId = freezed,
    Object? sport = null,
    Object? name = null,
    Object? lengthWeeks = null,
    Object? description = null,
    Object? isPreloaded = null,
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
      coachId: freezed == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lengthWeeks: null == lengthWeeks
          ? _value.lengthWeeks
          : lengthWeeks // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPreloaded: null == isPreloaded
          ? _value.isPreloaded
          : isPreloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<TemplateWeek>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramTemplateImplCopyWith<$Res>
    implements $ProgramTemplateCopyWith<$Res> {
  factory _$$ProgramTemplateImplCopyWith(_$ProgramTemplateImpl value,
          $Res Function(_$ProgramTemplateImpl) then) =
      __$$ProgramTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerId,
      String? coachId,
      Sport sport,
      String name,
      int lengthWeeks,
      String description,
      bool isPreloaded,
      List<TemplateWeek> weeks});
}

/// @nodoc
class __$$ProgramTemplateImplCopyWithImpl<$Res>
    extends _$ProgramTemplateCopyWithImpl<$Res, _$ProgramTemplateImpl>
    implements _$$ProgramTemplateImplCopyWith<$Res> {
  __$$ProgramTemplateImplCopyWithImpl(
      _$ProgramTemplateImpl _value, $Res Function(_$ProgramTemplateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgramTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? coachId = freezed,
    Object? sport = null,
    Object? name = null,
    Object? lengthWeeks = null,
    Object? description = null,
    Object? isPreloaded = null,
    Object? weeks = null,
  }) {
    return _then(_$ProgramTemplateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      coachId: freezed == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as String?,
      sport: null == sport
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as Sport,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lengthWeeks: null == lengthWeeks
          ? _value.lengthWeeks
          : lengthWeeks // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isPreloaded: null == isPreloaded
          ? _value.isPreloaded
          : isPreloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<TemplateWeek>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramTemplateImpl implements _ProgramTemplate {
  const _$ProgramTemplateImpl(
      {required this.id,
      required this.ownerId,
      this.coachId,
      required this.sport,
      required this.name,
      required this.lengthWeeks,
      required this.description,
      required this.isPreloaded,
      required final List<TemplateWeek> weeks})
      : _weeks = weeks;

  factory _$ProgramTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramTemplateImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String? coachId;
  @override
  final Sport sport;
  @override
  final String name;
  @override
  final int lengthWeeks;
  @override
  final String description;
  @override
  final bool isPreloaded;
  final List<TemplateWeek> _weeks;
  @override
  List<TemplateWeek> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  String toString() {
    return 'ProgramTemplate(id: $id, ownerId: $ownerId, coachId: $coachId, sport: $sport, name: $name, lengthWeeks: $lengthWeeks, description: $description, isPreloaded: $isPreloaded, weeks: $weeks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramTemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.sport, sport) || other.sport == sport) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lengthWeeks, lengthWeeks) ||
                other.lengthWeeks == lengthWeeks) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isPreloaded, isPreloaded) ||
                other.isPreloaded == isPreloaded) &&
            const DeepCollectionEquality().equals(other._weeks, _weeks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      coachId,
      sport,
      name,
      lengthWeeks,
      description,
      isPreloaded,
      const DeepCollectionEquality().hash(_weeks));

  /// Create a copy of ProgramTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramTemplateImplCopyWith<_$ProgramTemplateImpl> get copyWith =>
      __$$ProgramTemplateImplCopyWithImpl<_$ProgramTemplateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramTemplateImplToJson(
      this,
    );
  }
}

abstract class _ProgramTemplate implements ProgramTemplate {
  const factory _ProgramTemplate(
      {required final String id,
      required final String ownerId,
      final String? coachId,
      required final Sport sport,
      required final String name,
      required final int lengthWeeks,
      required final String description,
      required final bool isPreloaded,
      required final List<TemplateWeek> weeks}) = _$ProgramTemplateImpl;

  factory _ProgramTemplate.fromJson(Map<String, dynamic> json) =
      _$ProgramTemplateImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  String? get coachId;
  @override
  Sport get sport;
  @override
  String get name;
  @override
  int get lengthWeeks;
  @override
  String get description;
  @override
  bool get isPreloaded;
  @override
  List<TemplateWeek> get weeks;

  /// Create a copy of ProgramTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramTemplateImplCopyWith<_$ProgramTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateWeek _$TemplateWeekFromJson(Map<String, dynamic> json) {
  return _TemplateWeek.fromJson(json);
}

/// @nodoc
mixin _$TemplateWeek {
  String get name => throw _privateConstructorUsedError;
  String get focus => throw _privateConstructorUsedError;
  List<TemplateDay> get days => throw _privateConstructorUsedError;

  /// Serializes this TemplateWeek to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemplateWeek
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateWeekCopyWith<TemplateWeek> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateWeekCopyWith<$Res> {
  factory $TemplateWeekCopyWith(
          TemplateWeek value, $Res Function(TemplateWeek) then) =
      _$TemplateWeekCopyWithImpl<$Res, TemplateWeek>;
  @useResult
  $Res call({String name, String focus, List<TemplateDay> days});
}

/// @nodoc
class _$TemplateWeekCopyWithImpl<$Res, $Val extends TemplateWeek>
    implements $TemplateWeekCopyWith<$Res> {
  _$TemplateWeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateWeek
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? focus = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      focus: null == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TemplateDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateWeekImplCopyWith<$Res>
    implements $TemplateWeekCopyWith<$Res> {
  factory _$$TemplateWeekImplCopyWith(
          _$TemplateWeekImpl value, $Res Function(_$TemplateWeekImpl) then) =
      __$$TemplateWeekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String focus, List<TemplateDay> days});
}

/// @nodoc
class __$$TemplateWeekImplCopyWithImpl<$Res>
    extends _$TemplateWeekCopyWithImpl<$Res, _$TemplateWeekImpl>
    implements _$$TemplateWeekImplCopyWith<$Res> {
  __$$TemplateWeekImplCopyWithImpl(
      _$TemplateWeekImpl _value, $Res Function(_$TemplateWeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateWeek
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? focus = null,
    Object? days = null,
  }) {
    return _then(_$TemplateWeekImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      focus: null == focus
          ? _value.focus
          : focus // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TemplateDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateWeekImpl implements _TemplateWeek {
  const _$TemplateWeekImpl(
      {required this.name,
      required this.focus,
      required final List<TemplateDay> days})
      : _days = days;

  factory _$TemplateWeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateWeekImplFromJson(json);

  @override
  final String name;
  @override
  final String focus;
  final List<TemplateDay> _days;
  @override
  List<TemplateDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'TemplateWeek(name: $name, focus: $focus, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateWeekImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.focus, focus) || other.focus == focus) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, focus, const DeepCollectionEquality().hash(_days));

  /// Create a copy of TemplateWeek
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateWeekImplCopyWith<_$TemplateWeekImpl> get copyWith =>
      __$$TemplateWeekImplCopyWithImpl<_$TemplateWeekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateWeekImplToJson(
      this,
    );
  }
}

abstract class _TemplateWeek implements TemplateWeek {
  const factory _TemplateWeek(
      {required final String name,
      required final String focus,
      required final List<TemplateDay> days}) = _$TemplateWeekImpl;

  factory _TemplateWeek.fromJson(Map<String, dynamic> json) =
      _$TemplateWeekImpl.fromJson;

  @override
  String get name;
  @override
  String get focus;
  @override
  List<TemplateDay> get days;

  /// Create a copy of TemplateWeek
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateWeekImplCopyWith<_$TemplateWeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateDay _$TemplateDayFromJson(Map<String, dynamic> json) {
  return _TemplateDay.fromJson(json);
}

/// @nodoc
mixin _$TemplateDay {
  String get name => throw _privateConstructorUsedError;
  List<TemplateItem> get items => throw _privateConstructorUsedError;

  /// Serializes this TemplateDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemplateDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateDayCopyWith<TemplateDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateDayCopyWith<$Res> {
  factory $TemplateDayCopyWith(
          TemplateDay value, $Res Function(TemplateDay) then) =
      _$TemplateDayCopyWithImpl<$Res, TemplateDay>;
  @useResult
  $Res call({String name, List<TemplateItem> items});
}

/// @nodoc
class _$TemplateDayCopyWithImpl<$Res, $Val extends TemplateDay>
    implements $TemplateDayCopyWith<$Res> {
  _$TemplateDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TemplateItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateDayImplCopyWith<$Res>
    implements $TemplateDayCopyWith<$Res> {
  factory _$$TemplateDayImplCopyWith(
          _$TemplateDayImpl value, $Res Function(_$TemplateDayImpl) then) =
      __$$TemplateDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<TemplateItem> items});
}

/// @nodoc
class __$$TemplateDayImplCopyWithImpl<$Res>
    extends _$TemplateDayCopyWithImpl<$Res, _$TemplateDayImpl>
    implements _$$TemplateDayImplCopyWith<$Res> {
  __$$TemplateDayImplCopyWithImpl(
      _$TemplateDayImpl _value, $Res Function(_$TemplateDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$TemplateDayImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TemplateItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateDayImpl implements _TemplateDay {
  const _$TemplateDayImpl(
      {required this.name, required final List<TemplateItem> items})
      : _items = items;

  factory _$TemplateDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateDayImplFromJson(json);

  @override
  final String name;
  final List<TemplateItem> _items;
  @override
  List<TemplateItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TemplateDay(name: $name, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateDayImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  /// Create a copy of TemplateDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateDayImplCopyWith<_$TemplateDayImpl> get copyWith =>
      __$$TemplateDayImplCopyWithImpl<_$TemplateDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateDayImplToJson(
      this,
    );
  }
}

abstract class _TemplateDay implements TemplateDay {
  const factory _TemplateDay(
      {required final String name,
      required final List<TemplateItem> items}) = _$TemplateDayImpl;

  factory _TemplateDay.fromJson(Map<String, dynamic> json) =
      _$TemplateDayImpl.fromJson;

  @override
  String get name;
  @override
  List<TemplateItem> get items;

  /// Create a copy of TemplateDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateDayImplCopyWith<_$TemplateDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateItem _$TemplateItemFromJson(Map<String, dynamic> json) {
  return _TemplateItem.fromJson(json);
}

/// @nodoc
mixin _$TemplateItem {
  String get liftId => throw _privateConstructorUsedError;
  Prescription get prescription => throw _privateConstructorUsedError;

  /// Serializes this TemplateItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateItemCopyWith<TemplateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateItemCopyWith<$Res> {
  factory $TemplateItemCopyWith(
          TemplateItem value, $Res Function(TemplateItem) then) =
      _$TemplateItemCopyWithImpl<$Res, TemplateItem>;
  @useResult
  $Res call({String liftId, Prescription prescription});

  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class _$TemplateItemCopyWithImpl<$Res, $Val extends TemplateItem>
    implements $TemplateItemCopyWith<$Res> {
  _$TemplateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftId = null,
    Object? prescription = null,
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
    ) as $Val);
  }

  /// Create a copy of TemplateItem
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
abstract class _$$TemplateItemImplCopyWith<$Res>
    implements $TemplateItemCopyWith<$Res> {
  factory _$$TemplateItemImplCopyWith(
          _$TemplateItemImpl value, $Res Function(_$TemplateItemImpl) then) =
      __$$TemplateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String liftId, Prescription prescription});

  @override
  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class __$$TemplateItemImplCopyWithImpl<$Res>
    extends _$TemplateItemCopyWithImpl<$Res, _$TemplateItemImpl>
    implements _$$TemplateItemImplCopyWith<$Res> {
  __$$TemplateItemImplCopyWithImpl(
      _$TemplateItemImpl _value, $Res Function(_$TemplateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftId = null,
    Object? prescription = null,
  }) {
    return _then(_$TemplateItemImpl(
      liftId: null == liftId
          ? _value.liftId
          : liftId // ignore: cast_nullable_to_non_nullable
              as String,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Prescription,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateItemImpl implements _TemplateItem {
  const _$TemplateItemImpl({required this.liftId, required this.prescription});

  factory _$TemplateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateItemImplFromJson(json);

  @override
  final String liftId;
  @override
  final Prescription prescription;

  @override
  String toString() {
    return 'TemplateItem(liftId: $liftId, prescription: $prescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateItemImpl &&
            (identical(other.liftId, liftId) || other.liftId == liftId) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, liftId, prescription);

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      __$$TemplateItemImplCopyWithImpl<_$TemplateItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateItemImplToJson(
      this,
    );
  }
}

abstract class _TemplateItem implements TemplateItem {
  const factory _TemplateItem(
      {required final String liftId,
      required final Prescription prescription}) = _$TemplateItemImpl;

  factory _TemplateItem.fromJson(Map<String, dynamic> json) =
      _$TemplateItemImpl.fromJson;

  @override
  String get liftId;
  @override
  Prescription get prescription;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
