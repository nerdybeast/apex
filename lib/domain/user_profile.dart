import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/timestamp_converter.dart';
import 'enums.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String uid,
    required String displayName,
    required Units units,
    required Sex sex,
    required UserRole role,
    Sport? sport,
    String? federation,
    String? weightClass,
    @Default(<BodyweightEntry>[]) List<BodyweightEntry> bodyweightLog,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class BodyweightEntry with _$BodyweightEntry {
  const factory BodyweightEntry({
    @TimestampConverter() required DateTime date,
    required double kg,
  }) = _BodyweightEntry;

  factory BodyweightEntry.fromJson(Map<String, dynamic> json) =>
      _$BodyweightEntryFromJson(json);
}
