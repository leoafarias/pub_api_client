// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageScore _$PackageScoreFromJson(Map<String, dynamic> json) {
  return _PackageScore.fromJson(json);
}

/// @nodoc
mixin _$PackageScore {
  int? get grantedPoints => throw _privateConstructorUsedError;
  int? get maxPoints => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  double? get popularityScore => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageScoreCopyWith<PackageScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageScoreCopyWith<$Res> {
  factory $PackageScoreCopyWith(
          PackageScore value, $Res Function(PackageScore) then) =
      _$PackageScoreCopyWithImpl<$Res, PackageScore>;
  @useResult
  $Res call(
      {int? grantedPoints,
      int? maxPoints,
      int likeCount,
      double? popularityScore,
      List<String> tags,
      DateTime lastUpdated});
}

/// @nodoc
class _$PackageScoreCopyWithImpl<$Res, $Val extends PackageScore>
    implements $PackageScoreCopyWith<$Res> {
  _$PackageScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantedPoints = freezed,
    Object? maxPoints = freezed,
    Object? likeCount = null,
    Object? popularityScore = freezed,
    Object? tags = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      grantedPoints: freezed == grantedPoints
          ? _value.grantedPoints
          : grantedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: freezed == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: freezed == popularityScore
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageScoreImplCopyWith<$Res>
    implements $PackageScoreCopyWith<$Res> {
  factory _$$PackageScoreImplCopyWith(
          _$PackageScoreImpl value, $Res Function(_$PackageScoreImpl) then) =
      __$$PackageScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? grantedPoints,
      int? maxPoints,
      int likeCount,
      double? popularityScore,
      List<String> tags,
      DateTime lastUpdated});
}

/// @nodoc
class __$$PackageScoreImplCopyWithImpl<$Res>
    extends _$PackageScoreCopyWithImpl<$Res, _$PackageScoreImpl>
    implements _$$PackageScoreImplCopyWith<$Res> {
  __$$PackageScoreImplCopyWithImpl(
      _$PackageScoreImpl _value, $Res Function(_$PackageScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantedPoints = freezed,
    Object? maxPoints = freezed,
    Object? likeCount = null,
    Object? popularityScore = freezed,
    Object? tags = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$PackageScoreImpl(
      grantedPoints: freezed == grantedPoints
          ? _value.grantedPoints
          : grantedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: freezed == maxPoints
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: freezed == popularityScore
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageScoreImpl implements _PackageScore {
  const _$PackageScoreImpl(
      {this.grantedPoints,
      this.maxPoints,
      required this.likeCount,
      this.popularityScore,
      required final List<String> tags,
      required this.lastUpdated})
      : _tags = tags;

  factory _$PackageScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageScoreImplFromJson(json);

  @override
  final int? grantedPoints;
  @override
  final int? maxPoints;
  @override
  final int likeCount;
  @override
  final double? popularityScore;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'PackageScore(grantedPoints: $grantedPoints, maxPoints: $maxPoints, likeCount: $likeCount, popularityScore: $popularityScore, tags: $tags, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageScoreImpl &&
            (identical(other.grantedPoints, grantedPoints) ||
                other.grantedPoints == grantedPoints) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.popularityScore, popularityScore) ||
                other.popularityScore == popularityScore) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      grantedPoints,
      maxPoints,
      likeCount,
      popularityScore,
      const DeepCollectionEquality().hash(_tags),
      lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageScoreImplCopyWith<_$PackageScoreImpl> get copyWith =>
      __$$PackageScoreImplCopyWithImpl<_$PackageScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageScoreImplToJson(
      this,
    );
  }
}

abstract class _PackageScore implements PackageScore {
  const factory _PackageScore(
      {final int? grantedPoints,
      final int? maxPoints,
      required final int likeCount,
      final double? popularityScore,
      required final List<String> tags,
      required final DateTime lastUpdated}) = _$PackageScoreImpl;

  factory _PackageScore.fromJson(Map<String, dynamic> json) =
      _$PackageScoreImpl.fromJson;

  @override
  int? get grantedPoints;
  @override
  int? get maxPoints;
  @override
  int get likeCount;
  @override
  double? get popularityScore;
  @override
  List<String> get tags;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$PackageScoreImplCopyWith<_$PackageScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageScoreCard _$PackageScoreCardFromJson(Map<String, dynamic> json) {
  return _PackageScoreCard.fromJson(json);
}

/// @nodoc
mixin _$PackageScoreCard {
  String get packageName => throw _privateConstructorUsedError;
  String get packageVersion => throw _privateConstructorUsedError;
  String get runtimeVersion => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageScoreCardCopyWith<PackageScoreCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageScoreCardCopyWith<$Res> {
  factory $PackageScoreCardCopyWith(
          PackageScoreCard value, $Res Function(PackageScoreCard) then) =
      _$PackageScoreCardCopyWithImpl<$Res, PackageScoreCard>;
  @useResult
  $Res call(
      {String packageName,
      String packageVersion,
      String runtimeVersion,
      DateTime updated});
}

/// @nodoc
class _$PackageScoreCardCopyWithImpl<$Res, $Val extends PackageScoreCard>
    implements $PackageScoreCardCopyWith<$Res> {
  _$PackageScoreCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? packageVersion = null,
    Object? runtimeVersion = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageVersion: null == packageVersion
          ? _value.packageVersion
          : packageVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeVersion: null == runtimeVersion
          ? _value.runtimeVersion
          : runtimeVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageScoreCardImplCopyWith<$Res>
    implements $PackageScoreCardCopyWith<$Res> {
  factory _$$PackageScoreCardImplCopyWith(_$PackageScoreCardImpl value,
          $Res Function(_$PackageScoreCardImpl) then) =
      __$$PackageScoreCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageName,
      String packageVersion,
      String runtimeVersion,
      DateTime updated});
}

/// @nodoc
class __$$PackageScoreCardImplCopyWithImpl<$Res>
    extends _$PackageScoreCardCopyWithImpl<$Res, _$PackageScoreCardImpl>
    implements _$$PackageScoreCardImplCopyWith<$Res> {
  __$$PackageScoreCardImplCopyWithImpl(_$PackageScoreCardImpl _value,
      $Res Function(_$PackageScoreCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? packageVersion = null,
    Object? runtimeVersion = null,
    Object? updated = null,
  }) {
    return _then(_$PackageScoreCardImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageVersion: null == packageVersion
          ? _value.packageVersion
          : packageVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeVersion: null == runtimeVersion
          ? _value.runtimeVersion
          : runtimeVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageScoreCardImpl implements _PackageScoreCard {
  const _$PackageScoreCardImpl(
      {required this.packageName,
      required this.packageVersion,
      required this.runtimeVersion,
      required this.updated});

  factory _$PackageScoreCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageScoreCardImplFromJson(json);

  @override
  final String packageName;
  @override
  final String packageVersion;
  @override
  final String runtimeVersion;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'PackageScoreCard(packageName: $packageName, packageVersion: $packageVersion, runtimeVersion: $runtimeVersion, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageScoreCardImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.packageVersion, packageVersion) ||
                other.packageVersion == packageVersion) &&
            (identical(other.runtimeVersion, runtimeVersion) ||
                other.runtimeVersion == runtimeVersion) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, packageName, packageVersion, runtimeVersion, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageScoreCardImplCopyWith<_$PackageScoreCardImpl> get copyWith =>
      __$$PackageScoreCardImplCopyWithImpl<_$PackageScoreCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageScoreCardImplToJson(
      this,
    );
  }
}

abstract class _PackageScoreCard implements PackageScoreCard {
  const factory _PackageScoreCard(
      {required final String packageName,
      required final String packageVersion,
      required final String runtimeVersion,
      required final DateTime updated}) = _$PackageScoreCardImpl;

  factory _PackageScoreCard.fromJson(Map<String, dynamic> json) =
      _$PackageScoreCardImpl.fromJson;

  @override
  String get packageName;
  @override
  String get packageVersion;
  @override
  String get runtimeVersion;
  @override
  DateTime get updated;
  @override
  @JsonKey(ignore: true)
  _$$PackageScoreCardImplCopyWith<_$PackageScoreCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
