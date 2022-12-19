// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageScoreCopyWith<$Res>
    implements $PackageScoreCopyWith<$Res> {
  factory _$$_PackageScoreCopyWith(
          _$_PackageScore value, $Res Function(_$_PackageScore) then) =
      __$$_PackageScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? grantedPoints,
      int? maxPoints,
      int likeCount,
      double? popularityScore,
      DateTime lastUpdated});
}

/// @nodoc
class __$$_PackageScoreCopyWithImpl<$Res>
    extends _$PackageScoreCopyWithImpl<$Res, _$_PackageScore>
    implements _$$_PackageScoreCopyWith<$Res> {
  __$$_PackageScoreCopyWithImpl(
      _$_PackageScore _value, $Res Function(_$_PackageScore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantedPoints = freezed,
    Object? maxPoints = freezed,
    Object? likeCount = null,
    Object? popularityScore = freezed,
    Object? lastUpdated = null,
  }) {
    return _then(_$_PackageScore(
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageScore implements _PackageScore {
  _$_PackageScore(
      {required this.grantedPoints,
      required this.maxPoints,
      required this.likeCount,
      required this.popularityScore,
      required this.lastUpdated});

  factory _$_PackageScore.fromJson(Map<String, dynamic> json) =>
      _$$_PackageScoreFromJson(json);

  @override
  final int? grantedPoints;
  @override
  final int? maxPoints;
  @override
  final int likeCount;
  @override
  final double? popularityScore;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'PackageScore(grantedPoints: $grantedPoints, maxPoints: $maxPoints, likeCount: $likeCount, popularityScore: $popularityScore, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageScore &&
            (identical(other.grantedPoints, grantedPoints) ||
                other.grantedPoints == grantedPoints) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.popularityScore, popularityScore) ||
                other.popularityScore == popularityScore) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grantedPoints, maxPoints,
      likeCount, popularityScore, lastUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageScoreCopyWith<_$_PackageScore> get copyWith =>
      __$$_PackageScoreCopyWithImpl<_$_PackageScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageScoreToJson(
      this,
    );
  }
}

abstract class _PackageScore implements PackageScore {
  factory _PackageScore(
      {required final int? grantedPoints,
      required final int? maxPoints,
      required final int likeCount,
      required final double? popularityScore,
      required final DateTime lastUpdated}) = _$_PackageScore;

  factory _PackageScore.fromJson(Map<String, dynamic> json) =
      _$_PackageScore.fromJson;

  @override
  int? get grantedPoints;
  @override
  int? get maxPoints;
  @override
  int get likeCount;
  @override
  double? get popularityScore;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_PackageScoreCopyWith<_$_PackageScore> get copyWith =>
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
  DateTime get packageCreated => throw _privateConstructorUsedError;
  DateTime get packageVersionCreated => throw _privateConstructorUsedError;
  List<String> get derivedTags => throw _privateConstructorUsedError;
  List<String> get flags => throw _privateConstructorUsedError;
  List<String> get reportTypes => throw _privateConstructorUsedError;

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
      DateTime updated,
      DateTime packageCreated,
      DateTime packageVersionCreated,
      List<String> derivedTags,
      List<String> flags,
      List<String> reportTypes});
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
    Object? packageCreated = null,
    Object? packageVersionCreated = null,
    Object? derivedTags = null,
    Object? flags = null,
    Object? reportTypes = null,
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
      packageCreated: null == packageCreated
          ? _value.packageCreated
          : packageCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageVersionCreated: null == packageVersionCreated
          ? _value.packageVersionCreated
          : packageVersionCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      derivedTags: null == derivedTags
          ? _value.derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reportTypes: null == reportTypes
          ? _value.reportTypes
          : reportTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageScoreCardCopyWith<$Res>
    implements $PackageScoreCardCopyWith<$Res> {
  factory _$$_PackageScoreCardCopyWith(
          _$_PackageScoreCard value, $Res Function(_$_PackageScoreCard) then) =
      __$$_PackageScoreCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageName,
      String packageVersion,
      String runtimeVersion,
      DateTime updated,
      DateTime packageCreated,
      DateTime packageVersionCreated,
      List<String> derivedTags,
      List<String> flags,
      List<String> reportTypes});
}

/// @nodoc
class __$$_PackageScoreCardCopyWithImpl<$Res>
    extends _$PackageScoreCardCopyWithImpl<$Res, _$_PackageScoreCard>
    implements _$$_PackageScoreCardCopyWith<$Res> {
  __$$_PackageScoreCardCopyWithImpl(
      _$_PackageScoreCard _value, $Res Function(_$_PackageScoreCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? packageVersion = null,
    Object? runtimeVersion = null,
    Object? updated = null,
    Object? packageCreated = null,
    Object? packageVersionCreated = null,
    Object? derivedTags = null,
    Object? flags = null,
    Object? reportTypes = null,
  }) {
    return _then(_$_PackageScoreCard(
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
      packageCreated: null == packageCreated
          ? _value.packageCreated
          : packageCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageVersionCreated: null == packageVersionCreated
          ? _value.packageVersionCreated
          : packageVersionCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      derivedTags: null == derivedTags
          ? _value._derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: null == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reportTypes: null == reportTypes
          ? _value._reportTypes
          : reportTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageScoreCard implements _PackageScoreCard {
  _$_PackageScoreCard(
      {required this.packageName,
      required this.packageVersion,
      required this.runtimeVersion,
      required this.updated,
      required this.packageCreated,
      required this.packageVersionCreated,
      final List<String> derivedTags = const [],
      final List<String> flags = const [],
      final List<String> reportTypes = const []})
      : _derivedTags = derivedTags,
        _flags = flags,
        _reportTypes = reportTypes;

  factory _$_PackageScoreCard.fromJson(Map<String, dynamic> json) =>
      _$$_PackageScoreCardFromJson(json);

  @override
  final String packageName;
  @override
  final String packageVersion;
  @override
  final String runtimeVersion;
  @override
  final DateTime updated;
  @override
  final DateTime packageCreated;
  @override
  final DateTime packageVersionCreated;
  final List<String> _derivedTags;
  @override
  @JsonKey()
  List<String> get derivedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_derivedTags);
  }

  final List<String> _flags;
  @override
  @JsonKey()
  List<String> get flags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flags);
  }

  final List<String> _reportTypes;
  @override
  @JsonKey()
  List<String> get reportTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportTypes);
  }

  @override
  String toString() {
    return 'PackageScoreCard(packageName: $packageName, packageVersion: $packageVersion, runtimeVersion: $runtimeVersion, updated: $updated, packageCreated: $packageCreated, packageVersionCreated: $packageVersionCreated, derivedTags: $derivedTags, flags: $flags, reportTypes: $reportTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageScoreCard &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.packageVersion, packageVersion) ||
                other.packageVersion == packageVersion) &&
            (identical(other.runtimeVersion, runtimeVersion) ||
                other.runtimeVersion == runtimeVersion) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.packageCreated, packageCreated) ||
                other.packageCreated == packageCreated) &&
            (identical(other.packageVersionCreated, packageVersionCreated) ||
                other.packageVersionCreated == packageVersionCreated) &&
            const DeepCollectionEquality()
                .equals(other._derivedTags, _derivedTags) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            const DeepCollectionEquality()
                .equals(other._reportTypes, _reportTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      packageName,
      packageVersion,
      runtimeVersion,
      updated,
      packageCreated,
      packageVersionCreated,
      const DeepCollectionEquality().hash(_derivedTags),
      const DeepCollectionEquality().hash(_flags),
      const DeepCollectionEquality().hash(_reportTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageScoreCardCopyWith<_$_PackageScoreCard> get copyWith =>
      __$$_PackageScoreCardCopyWithImpl<_$_PackageScoreCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageScoreCardToJson(
      this,
    );
  }
}

abstract class _PackageScoreCard implements PackageScoreCard {
  factory _PackageScoreCard(
      {required final String packageName,
      required final String packageVersion,
      required final String runtimeVersion,
      required final DateTime updated,
      required final DateTime packageCreated,
      required final DateTime packageVersionCreated,
      final List<String> derivedTags,
      final List<String> flags,
      final List<String> reportTypes}) = _$_PackageScoreCard;

  factory _PackageScoreCard.fromJson(Map<String, dynamic> json) =
      _$_PackageScoreCard.fromJson;

  @override
  String get packageName;
  @override
  String get packageVersion;
  @override
  String get runtimeVersion;
  @override
  DateTime get updated;
  @override
  DateTime get packageCreated;
  @override
  DateTime get packageVersionCreated;
  @override
  List<String> get derivedTags;
  @override
  List<String> get flags;
  @override
  List<String> get reportTypes;
  @override
  @JsonKey(ignore: true)
  _$$_PackageScoreCardCopyWith<_$_PackageScoreCard> get copyWith =>
      throw _privateConstructorUsedError;
}
