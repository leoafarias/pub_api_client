// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'package_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageScore _$PackageScoreFromJson(Map<String, dynamic> json) {
  return _PackageScore.fromJson(json);
}

/// @nodoc
class _$PackageScoreTearOff {
  const _$PackageScoreTearOff();

// ignore: unused_element
  _PackageScore call(
      {int grantedPoints,
      int maxPoints,
      int likeCount,
      double popularityScore,
      DateTime lastUpdated}) {
    return _PackageScore(
      grantedPoints: grantedPoints,
      maxPoints: maxPoints,
      likeCount: likeCount,
      popularityScore: popularityScore,
      lastUpdated: lastUpdated,
    );
  }

// ignore: unused_element
  PackageScore fromJson(Map<String, Object> json) {
    return PackageScore.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageScore = _$PackageScoreTearOff();

/// @nodoc
mixin _$PackageScore {
  int get grantedPoints;
  int get maxPoints;
  int get likeCount;
  double get popularityScore;
  DateTime get lastUpdated;

  Map<String, dynamic> toJson();
  $PackageScoreCopyWith<PackageScore> get copyWith;
}

/// @nodoc
abstract class $PackageScoreCopyWith<$Res> {
  factory $PackageScoreCopyWith(
          PackageScore value, $Res Function(PackageScore) then) =
      _$PackageScoreCopyWithImpl<$Res>;
  $Res call(
      {int grantedPoints,
      int maxPoints,
      int likeCount,
      double popularityScore,
      DateTime lastUpdated});
}

/// @nodoc
class _$PackageScoreCopyWithImpl<$Res> implements $PackageScoreCopyWith<$Res> {
  _$PackageScoreCopyWithImpl(this._value, this._then);

  final PackageScore _value;
  // ignore: unused_field
  final $Res Function(PackageScore) _then;

  @override
  $Res call({
    Object grantedPoints = freezed,
    Object maxPoints = freezed,
    Object likeCount = freezed,
    Object popularityScore = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      grantedPoints: grantedPoints == freezed
          ? _value.grantedPoints
          : grantedPoints as int,
      maxPoints: maxPoints == freezed ? _value.maxPoints : maxPoints as int,
      likeCount: likeCount == freezed ? _value.likeCount : likeCount as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore as double,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PackageScoreCopyWith<$Res>
    implements $PackageScoreCopyWith<$Res> {
  factory _$PackageScoreCopyWith(
          _PackageScore value, $Res Function(_PackageScore) then) =
      __$PackageScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {int grantedPoints,
      int maxPoints,
      int likeCount,
      double popularityScore,
      DateTime lastUpdated});
}

/// @nodoc
class __$PackageScoreCopyWithImpl<$Res> extends _$PackageScoreCopyWithImpl<$Res>
    implements _$PackageScoreCopyWith<$Res> {
  __$PackageScoreCopyWithImpl(
      _PackageScore _value, $Res Function(_PackageScore) _then)
      : super(_value, (v) => _then(v as _PackageScore));

  @override
  _PackageScore get _value => super._value as _PackageScore;

  @override
  $Res call({
    Object grantedPoints = freezed,
    Object maxPoints = freezed,
    Object likeCount = freezed,
    Object popularityScore = freezed,
    Object lastUpdated = freezed,
  }) {
    return _then(_PackageScore(
      grantedPoints: grantedPoints == freezed
          ? _value.grantedPoints
          : grantedPoints as int,
      maxPoints: maxPoints == freezed ? _value.maxPoints : maxPoints as int,
      likeCount: likeCount == freezed ? _value.likeCount : likeCount as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore as double,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageScore implements _PackageScore {
  _$_PackageScore(
      {this.grantedPoints,
      this.maxPoints,
      this.likeCount,
      this.popularityScore,
      this.lastUpdated});

  factory _$_PackageScore.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageScoreFromJson(json);

  @override
  final int grantedPoints;
  @override
  final int maxPoints;
  @override
  final int likeCount;
  @override
  final double popularityScore;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'PackageScore(grantedPoints: $grantedPoints, maxPoints: $maxPoints, likeCount: $likeCount, popularityScore: $popularityScore, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageScore &&
            (identical(other.grantedPoints, grantedPoints) ||
                const DeepCollectionEquality()
                    .equals(other.grantedPoints, grantedPoints)) &&
            (identical(other.maxPoints, maxPoints) ||
                const DeepCollectionEquality()
                    .equals(other.maxPoints, maxPoints)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.popularityScore, popularityScore) ||
                const DeepCollectionEquality()
                    .equals(other.popularityScore, popularityScore)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grantedPoints) ^
      const DeepCollectionEquality().hash(maxPoints) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(popularityScore) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @override
  _$PackageScoreCopyWith<_PackageScore> get copyWith =>
      __$PackageScoreCopyWithImpl<_PackageScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageScoreToJson(this);
  }
}

abstract class _PackageScore implements PackageScore {
  factory _PackageScore(
      {int grantedPoints,
      int maxPoints,
      int likeCount,
      double popularityScore,
      DateTime lastUpdated}) = _$_PackageScore;

  factory _PackageScore.fromJson(Map<String, dynamic> json) =
      _$_PackageScore.fromJson;

  @override
  int get grantedPoints;
  @override
  int get maxPoints;
  @override
  int get likeCount;
  @override
  double get popularityScore;
  @override
  DateTime get lastUpdated;
  @override
  _$PackageScoreCopyWith<_PackageScore> get copyWith;
}
