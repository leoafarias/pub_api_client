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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageScore _$PackageScoreFromJson(Map<String, dynamic> json) {
  return _PackageScore.fromJson(json);
}

/// @nodoc
class _$PackageScoreTearOff {
  const _$PackageScoreTearOff();

  _PackageScore call(
      {required int? grantedPoints,
      required int? maxPoints,
      required int likeCount,
      required double? popularityScore,
      required DateTime lastUpdated}) {
    return _PackageScore(
      grantedPoints: grantedPoints,
      maxPoints: maxPoints,
      likeCount: likeCount,
      popularityScore: popularityScore,
      lastUpdated: lastUpdated,
    );
  }

  PackageScore fromJson(Map<String, Object?> json) {
    return PackageScore.fromJson(json);
  }
}

/// @nodoc
const $PackageScore = _$PackageScoreTearOff();

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
      _$PackageScoreCopyWithImpl<$Res>;
  $Res call(
      {int? grantedPoints,
      int? maxPoints,
      int likeCount,
      double? popularityScore,
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
    Object? grantedPoints = freezed,
    Object? maxPoints = freezed,
    Object? likeCount = freezed,
    Object? popularityScore = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      grantedPoints: grantedPoints == freezed
          ? _value.grantedPoints
          : grantedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: maxPoints == freezed
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {int? grantedPoints,
      int? maxPoints,
      int likeCount,
      double? popularityScore,
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
    Object? grantedPoints = freezed,
    Object? maxPoints = freezed,
    Object? likeCount = freezed,
    Object? popularityScore = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_PackageScore(
      grantedPoints: grantedPoints == freezed
          ? _value.grantedPoints
          : grantedPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPoints: maxPoints == freezed
          ? _value.maxPoints
          : maxPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
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
            other is _PackageScore &&
            const DeepCollectionEquality()
                .equals(other.grantedPoints, grantedPoints) &&
            const DeepCollectionEquality().equals(other.maxPoints, maxPoints) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.popularityScore, popularityScore) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(grantedPoints),
      const DeepCollectionEquality().hash(maxPoints),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(popularityScore),
      const DeepCollectionEquality().hash(lastUpdated));

  @JsonKey(ignore: true)
  @override
  _$PackageScoreCopyWith<_PackageScore> get copyWith =>
      __$PackageScoreCopyWithImpl<_PackageScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageScoreToJson(this);
  }
}

abstract class _PackageScore implements PackageScore {
  factory _PackageScore(
      {required int? grantedPoints,
      required int? maxPoints,
      required int likeCount,
      required double? popularityScore,
      required DateTime lastUpdated}) = _$_PackageScore;

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
  _$PackageScoreCopyWith<_PackageScore> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageScoreCard _$PackageScoreCardFromJson(Map<String, dynamic> json) {
  return _PackageScoreCard.fromJson(json);
}

/// @nodoc
class _$PackageScoreCardTearOff {
  const _$PackageScoreCardTearOff();

  _PackageScoreCard call(
      {required String packageName,
      required String packageVersion,
      required String runtimeVersion,
      required DateTime updated,
      required DateTime packageCreated,
      required DateTime packageVersionCreated,
      required int grantedPubPoints,
      required int maxPubPoints,
      required double popularityScore,
      List<String> derivedTags = const [],
      List<String> flags = const [],
      List<String> reportTypes = const []}) {
    return _PackageScoreCard(
      packageName: packageName,
      packageVersion: packageVersion,
      runtimeVersion: runtimeVersion,
      updated: updated,
      packageCreated: packageCreated,
      packageVersionCreated: packageVersionCreated,
      grantedPubPoints: grantedPubPoints,
      maxPubPoints: maxPubPoints,
      popularityScore: popularityScore,
      derivedTags: derivedTags,
      flags: flags,
      reportTypes: reportTypes,
    );
  }

  PackageScoreCard fromJson(Map<String, Object?> json) {
    return PackageScoreCard.fromJson(json);
  }
}

/// @nodoc
const $PackageScoreCard = _$PackageScoreCardTearOff();

/// @nodoc
mixin _$PackageScoreCard {
  String get packageName => throw _privateConstructorUsedError;
  String get packageVersion => throw _privateConstructorUsedError;
  String get runtimeVersion => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  DateTime get packageCreated => throw _privateConstructorUsedError;
  DateTime get packageVersionCreated => throw _privateConstructorUsedError;
  int get grantedPubPoints => throw _privateConstructorUsedError;
  int get maxPubPoints => throw _privateConstructorUsedError;
  double get popularityScore => throw _privateConstructorUsedError;
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
      _$PackageScoreCardCopyWithImpl<$Res>;
  $Res call(
      {String packageName,
      String packageVersion,
      String runtimeVersion,
      DateTime updated,
      DateTime packageCreated,
      DateTime packageVersionCreated,
      int grantedPubPoints,
      int maxPubPoints,
      double popularityScore,
      List<String> derivedTags,
      List<String> flags,
      List<String> reportTypes});
}

/// @nodoc
class _$PackageScoreCardCopyWithImpl<$Res>
    implements $PackageScoreCardCopyWith<$Res> {
  _$PackageScoreCardCopyWithImpl(this._value, this._then);

  final PackageScoreCard _value;
  // ignore: unused_field
  final $Res Function(PackageScoreCard) _then;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? packageVersion = freezed,
    Object? runtimeVersion = freezed,
    Object? updated = freezed,
    Object? packageCreated = freezed,
    Object? packageVersionCreated = freezed,
    Object? grantedPubPoints = freezed,
    Object? maxPubPoints = freezed,
    Object? popularityScore = freezed,
    Object? derivedTags = freezed,
    Object? flags = freezed,
    Object? reportTypes = freezed,
  }) {
    return _then(_value.copyWith(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageVersion: packageVersion == freezed
          ? _value.packageVersion
          : packageVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeVersion: runtimeVersion == freezed
          ? _value.runtimeVersion
          : runtimeVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageCreated: packageCreated == freezed
          ? _value.packageCreated
          : packageCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageVersionCreated: packageVersionCreated == freezed
          ? _value.packageVersionCreated
          : packageVersionCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      grantedPubPoints: grantedPubPoints == freezed
          ? _value.grantedPubPoints
          : grantedPubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      maxPubPoints: maxPubPoints == freezed
          ? _value.maxPubPoints
          : maxPubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double,
      derivedTags: derivedTags == freezed
          ? _value.derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reportTypes: reportTypes == freezed
          ? _value.reportTypes
          : reportTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PackageScoreCardCopyWith<$Res>
    implements $PackageScoreCardCopyWith<$Res> {
  factory _$PackageScoreCardCopyWith(
          _PackageScoreCard value, $Res Function(_PackageScoreCard) then) =
      __$PackageScoreCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String packageName,
      String packageVersion,
      String runtimeVersion,
      DateTime updated,
      DateTime packageCreated,
      DateTime packageVersionCreated,
      int grantedPubPoints,
      int maxPubPoints,
      double popularityScore,
      List<String> derivedTags,
      List<String> flags,
      List<String> reportTypes});
}

/// @nodoc
class __$PackageScoreCardCopyWithImpl<$Res>
    extends _$PackageScoreCardCopyWithImpl<$Res>
    implements _$PackageScoreCardCopyWith<$Res> {
  __$PackageScoreCardCopyWithImpl(
      _PackageScoreCard _value, $Res Function(_PackageScoreCard) _then)
      : super(_value, (v) => _then(v as _PackageScoreCard));

  @override
  _PackageScoreCard get _value => super._value as _PackageScoreCard;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? packageVersion = freezed,
    Object? runtimeVersion = freezed,
    Object? updated = freezed,
    Object? packageCreated = freezed,
    Object? packageVersionCreated = freezed,
    Object? grantedPubPoints = freezed,
    Object? maxPubPoints = freezed,
    Object? popularityScore = freezed,
    Object? derivedTags = freezed,
    Object? flags = freezed,
    Object? reportTypes = freezed,
  }) {
    return _then(_PackageScoreCard(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageVersion: packageVersion == freezed
          ? _value.packageVersion
          : packageVersion // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeVersion: runtimeVersion == freezed
          ? _value.runtimeVersion
          : runtimeVersion // ignore: cast_nullable_to_non_nullable
              as String,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageCreated: packageCreated == freezed
          ? _value.packageCreated
          : packageCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      packageVersionCreated: packageVersionCreated == freezed
          ? _value.packageVersionCreated
          : packageVersionCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      grantedPubPoints: grantedPubPoints == freezed
          ? _value.grantedPubPoints
          : grantedPubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      maxPubPoints: maxPubPoints == freezed
          ? _value.maxPubPoints
          : maxPubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularityScore: popularityScore == freezed
          ? _value.popularityScore
          : popularityScore // ignore: cast_nullable_to_non_nullable
              as double,
      derivedTags: derivedTags == freezed
          ? _value.derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reportTypes: reportTypes == freezed
          ? _value.reportTypes
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
      required this.grantedPubPoints,
      required this.maxPubPoints,
      required this.popularityScore,
      this.derivedTags = const [],
      this.flags = const [],
      this.reportTypes = const []});

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
  @override
  final int grantedPubPoints;
  @override
  final int maxPubPoints;
  @override
  final double popularityScore;
  @JsonKey()
  @override
  final List<String> derivedTags;
  @JsonKey()
  @override
  final List<String> flags;
  @JsonKey()
  @override
  final List<String> reportTypes;

  @override
  String toString() {
    return 'PackageScoreCard(packageName: $packageName, packageVersion: $packageVersion, runtimeVersion: $runtimeVersion, updated: $updated, packageCreated: $packageCreated, packageVersionCreated: $packageVersionCreated, grantedPubPoints: $grantedPubPoints, maxPubPoints: $maxPubPoints, popularityScore: $popularityScore, derivedTags: $derivedTags, flags: $flags, reportTypes: $reportTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageScoreCard &&
            const DeepCollectionEquality()
                .equals(other.packageName, packageName) &&
            const DeepCollectionEquality()
                .equals(other.packageVersion, packageVersion) &&
            const DeepCollectionEquality()
                .equals(other.runtimeVersion, runtimeVersion) &&
            const DeepCollectionEquality().equals(other.updated, updated) &&
            const DeepCollectionEquality()
                .equals(other.packageCreated, packageCreated) &&
            const DeepCollectionEquality()
                .equals(other.packageVersionCreated, packageVersionCreated) &&
            const DeepCollectionEquality()
                .equals(other.grantedPubPoints, grantedPubPoints) &&
            const DeepCollectionEquality()
                .equals(other.maxPubPoints, maxPubPoints) &&
            const DeepCollectionEquality()
                .equals(other.popularityScore, popularityScore) &&
            const DeepCollectionEquality()
                .equals(other.derivedTags, derivedTags) &&
            const DeepCollectionEquality().equals(other.flags, flags) &&
            const DeepCollectionEquality()
                .equals(other.reportTypes, reportTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packageName),
      const DeepCollectionEquality().hash(packageVersion),
      const DeepCollectionEquality().hash(runtimeVersion),
      const DeepCollectionEquality().hash(updated),
      const DeepCollectionEquality().hash(packageCreated),
      const DeepCollectionEquality().hash(packageVersionCreated),
      const DeepCollectionEquality().hash(grantedPubPoints),
      const DeepCollectionEquality().hash(maxPubPoints),
      const DeepCollectionEquality().hash(popularityScore),
      const DeepCollectionEquality().hash(derivedTags),
      const DeepCollectionEquality().hash(flags),
      const DeepCollectionEquality().hash(reportTypes));

  @JsonKey(ignore: true)
  @override
  _$PackageScoreCardCopyWith<_PackageScoreCard> get copyWith =>
      __$PackageScoreCardCopyWithImpl<_PackageScoreCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageScoreCardToJson(this);
  }
}

abstract class _PackageScoreCard implements PackageScoreCard {
  factory _PackageScoreCard(
      {required String packageName,
      required String packageVersion,
      required String runtimeVersion,
      required DateTime updated,
      required DateTime packageCreated,
      required DateTime packageVersionCreated,
      required int grantedPubPoints,
      required int maxPubPoints,
      required double popularityScore,
      List<String> derivedTags,
      List<String> flags,
      List<String> reportTypes}) = _$_PackageScoreCard;

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
  int get grantedPubPoints;
  @override
  int get maxPubPoints;
  @override
  double get popularityScore;
  @override
  List<String> get derivedTags;
  @override
  List<String> get flags;
  @override
  List<String> get reportTypes;
  @override
  @JsonKey(ignore: true)
  _$PackageScoreCardCopyWith<_PackageScoreCard> get copyWith =>
      throw _privateConstructorUsedError;
}
