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
  DartdocReport get dartdocReport => throw _privateConstructorUsedError;
  PanaReport get panaReport => throw _privateConstructorUsedError;
  String get taskStatus => throw _privateConstructorUsedError;

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
      DartdocReport dartdocReport,
      PanaReport panaReport,
      String taskStatus});

  $DartdocReportCopyWith<$Res> get dartdocReport;
  $PanaReportCopyWith<$Res> get panaReport;
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
    Object? dartdocReport = null,
    Object? panaReport = null,
    Object? taskStatus = null,
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
      dartdocReport: null == dartdocReport
          ? _value.dartdocReport
          : dartdocReport // ignore: cast_nullable_to_non_nullable
              as DartdocReport,
      panaReport: null == panaReport
          ? _value.panaReport
          : panaReport // ignore: cast_nullable_to_non_nullable
              as PanaReport,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DartdocReportCopyWith<$Res> get dartdocReport {
    return $DartdocReportCopyWith<$Res>(_value.dartdocReport, (value) {
      return _then(_value.copyWith(dartdocReport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PanaReportCopyWith<$Res> get panaReport {
    return $PanaReportCopyWith<$Res>(_value.panaReport, (value) {
      return _then(_value.copyWith(panaReport: value) as $Val);
    });
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
      DateTime updated,
      DartdocReport dartdocReport,
      PanaReport panaReport,
      String taskStatus});

  @override
  $DartdocReportCopyWith<$Res> get dartdocReport;
  @override
  $PanaReportCopyWith<$Res> get panaReport;
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
    Object? dartdocReport = null,
    Object? panaReport = null,
    Object? taskStatus = null,
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
      dartdocReport: null == dartdocReport
          ? _value.dartdocReport
          : dartdocReport // ignore: cast_nullable_to_non_nullable
              as DartdocReport,
      panaReport: null == panaReport
          ? _value.panaReport
          : panaReport // ignore: cast_nullable_to_non_nullable
              as PanaReport,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.updated,
      required this.dartdocReport,
      required this.panaReport,
      required this.taskStatus});

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
  final DartdocReport dartdocReport;
  @override
  final PanaReport panaReport;
  @override
  final String taskStatus;

  @override
  String toString() {
    return 'PackageScoreCard(packageName: $packageName, packageVersion: $packageVersion, runtimeVersion: $runtimeVersion, updated: $updated, dartdocReport: $dartdocReport, panaReport: $panaReport, taskStatus: $taskStatus)';
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
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.dartdocReport, dartdocReport) ||
                other.dartdocReport == dartdocReport) &&
            (identical(other.panaReport, panaReport) ||
                other.panaReport == panaReport) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, packageName, packageVersion,
      runtimeVersion, updated, dartdocReport, panaReport, taskStatus);

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
      required final DateTime updated,
      required final DartdocReport dartdocReport,
      required final PanaReport panaReport,
      required final String taskStatus}) = _$PackageScoreCardImpl;

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
  DartdocReport get dartdocReport;
  @override
  PanaReport get panaReport;
  @override
  String get taskStatus;
  @override
  @JsonKey(ignore: true)
  _$$PackageScoreCardImplCopyWith<_$PackageScoreCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DartdocReport _$DartdocReportFromJson(Map<String, dynamic> json) {
  return _DartdocReport.fromJson(json);
}

/// @nodoc
mixin _$DartdocReport {
  String get reportStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartdocReportCopyWith<DartdocReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartdocReportCopyWith<$Res> {
  factory $DartdocReportCopyWith(
          DartdocReport value, $Res Function(DartdocReport) then) =
      _$DartdocReportCopyWithImpl<$Res, DartdocReport>;
  @useResult
  $Res call({String reportStatus});
}

/// @nodoc
class _$DartdocReportCopyWithImpl<$Res, $Val extends DartdocReport>
    implements $DartdocReportCopyWith<$Res> {
  _$DartdocReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportStatus = null,
  }) {
    return _then(_value.copyWith(
      reportStatus: null == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DartdocReportImplCopyWith<$Res>
    implements $DartdocReportCopyWith<$Res> {
  factory _$$DartdocReportImplCopyWith(
          _$DartdocReportImpl value, $Res Function(_$DartdocReportImpl) then) =
      __$$DartdocReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reportStatus});
}

/// @nodoc
class __$$DartdocReportImplCopyWithImpl<$Res>
    extends _$DartdocReportCopyWithImpl<$Res, _$DartdocReportImpl>
    implements _$$DartdocReportImplCopyWith<$Res> {
  __$$DartdocReportImplCopyWithImpl(
      _$DartdocReportImpl _value, $Res Function(_$DartdocReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportStatus = null,
  }) {
    return _then(_$DartdocReportImpl(
      reportStatus: null == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DartdocReportImpl implements _DartdocReport {
  const _$DartdocReportImpl({required this.reportStatus});

  factory _$DartdocReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$DartdocReportImplFromJson(json);

  @override
  final String reportStatus;

  @override
  String toString() {
    return 'DartdocReport(reportStatus: $reportStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DartdocReportImpl &&
            (identical(other.reportStatus, reportStatus) ||
                other.reportStatus == reportStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reportStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DartdocReportImplCopyWith<_$DartdocReportImpl> get copyWith =>
      __$$DartdocReportImplCopyWithImpl<_$DartdocReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DartdocReportImplToJson(
      this,
    );
  }
}

abstract class _DartdocReport implements DartdocReport {
  const factory _DartdocReport({required final String reportStatus}) =
      _$DartdocReportImpl;

  factory _DartdocReport.fromJson(Map<String, dynamic> json) =
      _$DartdocReportImpl.fromJson;

  @override
  String get reportStatus;
  @override
  @JsonKey(ignore: true)
  _$$DartdocReportImplCopyWith<_$DartdocReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PanaReport _$PanaReportFromJson(Map<String, dynamic> json) {
  return _PanaReport.fromJson(json);
}

/// @nodoc
mixin _$PanaReport {
  DateTime? get timestamp => throw _privateConstructorUsedError;
  PanaRuntimeInfo? get panaRuntimeInfo => throw _privateConstructorUsedError;
  String get reportStatus => throw _privateConstructorUsedError;
  List<String> get derivedTags => throw _privateConstructorUsedError;
  List<String>? get allDependencies => throw _privateConstructorUsedError;
  List<License>? get licenses => throw _privateConstructorUsedError;
  Map<String, dynamic>? get report => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  List<Map<String, String>>? get screenshots =>
      throw _privateConstructorUsedError;
  List<String>? get urlProblems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PanaReportCopyWith<PanaReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanaReportCopyWith<$Res> {
  factory $PanaReportCopyWith(
          PanaReport value, $Res Function(PanaReport) then) =
      _$PanaReportCopyWithImpl<$Res, PanaReport>;
  @useResult
  $Res call(
      {DateTime? timestamp,
      PanaRuntimeInfo? panaRuntimeInfo,
      String reportStatus,
      List<String> derivedTags,
      List<String>? allDependencies,
      List<License>? licenses,
      Map<String, dynamic>? report,
      Map<String, dynamic>? result,
      List<Map<String, String>>? screenshots,
      List<String>? urlProblems});

  $PanaRuntimeInfoCopyWith<$Res>? get panaRuntimeInfo;
}

/// @nodoc
class _$PanaReportCopyWithImpl<$Res, $Val extends PanaReport>
    implements $PanaReportCopyWith<$Res> {
  _$PanaReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? panaRuntimeInfo = freezed,
    Object? reportStatus = null,
    Object? derivedTags = null,
    Object? allDependencies = freezed,
    Object? licenses = freezed,
    Object? report = freezed,
    Object? result = freezed,
    Object? screenshots = freezed,
    Object? urlProblems = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      panaRuntimeInfo: freezed == panaRuntimeInfo
          ? _value.panaRuntimeInfo
          : panaRuntimeInfo // ignore: cast_nullable_to_non_nullable
              as PanaRuntimeInfo?,
      reportStatus: null == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
              as String,
      derivedTags: null == derivedTags
          ? _value.derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allDependencies: freezed == allDependencies
          ? _value.allDependencies
          : allDependencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      licenses: freezed == licenses
          ? _value.licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      screenshots: freezed == screenshots
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      urlProblems: freezed == urlProblems
          ? _value.urlProblems
          : urlProblems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PanaRuntimeInfoCopyWith<$Res>? get panaRuntimeInfo {
    if (_value.panaRuntimeInfo == null) {
      return null;
    }

    return $PanaRuntimeInfoCopyWith<$Res>(_value.panaRuntimeInfo!, (value) {
      return _then(_value.copyWith(panaRuntimeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PanaReportImplCopyWith<$Res>
    implements $PanaReportCopyWith<$Res> {
  factory _$$PanaReportImplCopyWith(
          _$PanaReportImpl value, $Res Function(_$PanaReportImpl) then) =
      __$$PanaReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? timestamp,
      PanaRuntimeInfo? panaRuntimeInfo,
      String reportStatus,
      List<String> derivedTags,
      List<String>? allDependencies,
      List<License>? licenses,
      Map<String, dynamic>? report,
      Map<String, dynamic>? result,
      List<Map<String, String>>? screenshots,
      List<String>? urlProblems});

  @override
  $PanaRuntimeInfoCopyWith<$Res>? get panaRuntimeInfo;
}

/// @nodoc
class __$$PanaReportImplCopyWithImpl<$Res>
    extends _$PanaReportCopyWithImpl<$Res, _$PanaReportImpl>
    implements _$$PanaReportImplCopyWith<$Res> {
  __$$PanaReportImplCopyWithImpl(
      _$PanaReportImpl _value, $Res Function(_$PanaReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? panaRuntimeInfo = freezed,
    Object? reportStatus = null,
    Object? derivedTags = null,
    Object? allDependencies = freezed,
    Object? licenses = freezed,
    Object? report = freezed,
    Object? result = freezed,
    Object? screenshots = freezed,
    Object? urlProblems = freezed,
  }) {
    return _then(_$PanaReportImpl(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      panaRuntimeInfo: freezed == panaRuntimeInfo
          ? _value.panaRuntimeInfo
          : panaRuntimeInfo // ignore: cast_nullable_to_non_nullable
              as PanaRuntimeInfo?,
      reportStatus: null == reportStatus
          ? _value.reportStatus
          : reportStatus // ignore: cast_nullable_to_non_nullable
              as String,
      derivedTags: null == derivedTags
          ? _value._derivedTags
          : derivedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allDependencies: freezed == allDependencies
          ? _value._allDependencies
          : allDependencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      licenses: freezed == licenses
          ? _value._licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>?,
      report: freezed == report
          ? _value._report
          : report // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      screenshots: freezed == screenshots
          ? _value._screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      urlProblems: freezed == urlProblems
          ? _value._urlProblems
          : urlProblems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanaReportImpl implements _PanaReport {
  const _$PanaReportImpl(
      {this.timestamp,
      this.panaRuntimeInfo,
      required this.reportStatus,
      required final List<String> derivedTags,
      final List<String>? allDependencies,
      final List<License>? licenses,
      final Map<String, dynamic>? report,
      final Map<String, dynamic>? result,
      final List<Map<String, String>>? screenshots,
      final List<String>? urlProblems})
      : _derivedTags = derivedTags,
        _allDependencies = allDependencies,
        _licenses = licenses,
        _report = report,
        _result = result,
        _screenshots = screenshots,
        _urlProblems = urlProblems;

  factory _$PanaReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanaReportImplFromJson(json);

  @override
  final DateTime? timestamp;
  @override
  final PanaRuntimeInfo? panaRuntimeInfo;
  @override
  final String reportStatus;
  final List<String> _derivedTags;
  @override
  List<String> get derivedTags {
    if (_derivedTags is EqualUnmodifiableListView) return _derivedTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_derivedTags);
  }

  final List<String>? _allDependencies;
  @override
  List<String>? get allDependencies {
    final value = _allDependencies;
    if (value == null) return null;
    if (_allDependencies is EqualUnmodifiableListView) return _allDependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<License>? _licenses;
  @override
  List<License>? get licenses {
    final value = _licenses;
    if (value == null) return null;
    if (_licenses is EqualUnmodifiableListView) return _licenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _report;
  @override
  Map<String, dynamic>? get report {
    final value = _report;
    if (value == null) return null;
    if (_report is EqualUnmodifiableMapView) return _report;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, String>>? _screenshots;
  @override
  List<Map<String, String>>? get screenshots {
    final value = _screenshots;
    if (value == null) return null;
    if (_screenshots is EqualUnmodifiableListView) return _screenshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _urlProblems;
  @override
  List<String>? get urlProblems {
    final value = _urlProblems;
    if (value == null) return null;
    if (_urlProblems is EqualUnmodifiableListView) return _urlProblems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PanaReport(timestamp: $timestamp, panaRuntimeInfo: $panaRuntimeInfo, reportStatus: $reportStatus, derivedTags: $derivedTags, allDependencies: $allDependencies, licenses: $licenses, report: $report, result: $result, screenshots: $screenshots, urlProblems: $urlProblems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanaReportImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.panaRuntimeInfo, panaRuntimeInfo) ||
                other.panaRuntimeInfo == panaRuntimeInfo) &&
            (identical(other.reportStatus, reportStatus) ||
                other.reportStatus == reportStatus) &&
            const DeepCollectionEquality()
                .equals(other._derivedTags, _derivedTags) &&
            const DeepCollectionEquality()
                .equals(other._allDependencies, _allDependencies) &&
            const DeepCollectionEquality().equals(other._licenses, _licenses) &&
            const DeepCollectionEquality().equals(other._report, _report) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other._screenshots, _screenshots) &&
            const DeepCollectionEquality()
                .equals(other._urlProblems, _urlProblems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      panaRuntimeInfo,
      reportStatus,
      const DeepCollectionEquality().hash(_derivedTags),
      const DeepCollectionEquality().hash(_allDependencies),
      const DeepCollectionEquality().hash(_licenses),
      const DeepCollectionEquality().hash(_report),
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(_screenshots),
      const DeepCollectionEquality().hash(_urlProblems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PanaReportImplCopyWith<_$PanaReportImpl> get copyWith =>
      __$$PanaReportImplCopyWithImpl<_$PanaReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanaReportImplToJson(
      this,
    );
  }
}

abstract class _PanaReport implements PanaReport {
  const factory _PanaReport(
      {final DateTime? timestamp,
      final PanaRuntimeInfo? panaRuntimeInfo,
      required final String reportStatus,
      required final List<String> derivedTags,
      final List<String>? allDependencies,
      final List<License>? licenses,
      final Map<String, dynamic>? report,
      final Map<String, dynamic>? result,
      final List<Map<String, String>>? screenshots,
      final List<String>? urlProblems}) = _$PanaReportImpl;

  factory _PanaReport.fromJson(Map<String, dynamic> json) =
      _$PanaReportImpl.fromJson;

  @override
  DateTime? get timestamp;
  @override
  PanaRuntimeInfo? get panaRuntimeInfo;
  @override
  String get reportStatus;
  @override
  List<String> get derivedTags;
  @override
  List<String>? get allDependencies;
  @override
  List<License>? get licenses;
  @override
  Map<String, dynamic>? get report;
  @override
  Map<String, dynamic>? get result;
  @override
  List<Map<String, String>>? get screenshots;
  @override
  List<String>? get urlProblems;
  @override
  @JsonKey(ignore: true)
  _$$PanaReportImplCopyWith<_$PanaReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PanaRuntimeInfo _$PanaRuntimeInfoFromJson(Map<String, dynamic> json) {
  return _PanaRuntimeInfo.fromJson(json);
}

/// @nodoc
mixin _$PanaRuntimeInfo {
  String get panaVersion => throw _privateConstructorUsedError;
  String get sdkVersion => throw _privateConstructorUsedError;
  Map<String, String> get flutterVersions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PanaRuntimeInfoCopyWith<PanaRuntimeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanaRuntimeInfoCopyWith<$Res> {
  factory $PanaRuntimeInfoCopyWith(
          PanaRuntimeInfo value, $Res Function(PanaRuntimeInfo) then) =
      _$PanaRuntimeInfoCopyWithImpl<$Res, PanaRuntimeInfo>;
  @useResult
  $Res call(
      {String panaVersion,
      String sdkVersion,
      Map<String, String> flutterVersions});
}

/// @nodoc
class _$PanaRuntimeInfoCopyWithImpl<$Res, $Val extends PanaRuntimeInfo>
    implements $PanaRuntimeInfoCopyWith<$Res> {
  _$PanaRuntimeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? panaVersion = null,
    Object? sdkVersion = null,
    Object? flutterVersions = null,
  }) {
    return _then(_value.copyWith(
      panaVersion: null == panaVersion
          ? _value.panaVersion
          : panaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      sdkVersion: null == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      flutterVersions: null == flutterVersions
          ? _value.flutterVersions
          : flutterVersions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PanaRuntimeInfoImplCopyWith<$Res>
    implements $PanaRuntimeInfoCopyWith<$Res> {
  factory _$$PanaRuntimeInfoImplCopyWith(_$PanaRuntimeInfoImpl value,
          $Res Function(_$PanaRuntimeInfoImpl) then) =
      __$$PanaRuntimeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String panaVersion,
      String sdkVersion,
      Map<String, String> flutterVersions});
}

/// @nodoc
class __$$PanaRuntimeInfoImplCopyWithImpl<$Res>
    extends _$PanaRuntimeInfoCopyWithImpl<$Res, _$PanaRuntimeInfoImpl>
    implements _$$PanaRuntimeInfoImplCopyWith<$Res> {
  __$$PanaRuntimeInfoImplCopyWithImpl(
      _$PanaRuntimeInfoImpl _value, $Res Function(_$PanaRuntimeInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? panaVersion = null,
    Object? sdkVersion = null,
    Object? flutterVersions = null,
  }) {
    return _then(_$PanaRuntimeInfoImpl(
      panaVersion: null == panaVersion
          ? _value.panaVersion
          : panaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      sdkVersion: null == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String,
      flutterVersions: null == flutterVersions
          ? _value._flutterVersions
          : flutterVersions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanaRuntimeInfoImpl implements _PanaRuntimeInfo {
  const _$PanaRuntimeInfoImpl(
      {required this.panaVersion,
      required this.sdkVersion,
      required final Map<String, String> flutterVersions})
      : _flutterVersions = flutterVersions;

  factory _$PanaRuntimeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanaRuntimeInfoImplFromJson(json);

  @override
  final String panaVersion;
  @override
  final String sdkVersion;
  final Map<String, String> _flutterVersions;
  @override
  Map<String, String> get flutterVersions {
    if (_flutterVersions is EqualUnmodifiableMapView) return _flutterVersions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flutterVersions);
  }

  @override
  String toString() {
    return 'PanaRuntimeInfo(panaVersion: $panaVersion, sdkVersion: $sdkVersion, flutterVersions: $flutterVersions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanaRuntimeInfoImpl &&
            (identical(other.panaVersion, panaVersion) ||
                other.panaVersion == panaVersion) &&
            (identical(other.sdkVersion, sdkVersion) ||
                other.sdkVersion == sdkVersion) &&
            const DeepCollectionEquality()
                .equals(other._flutterVersions, _flutterVersions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, panaVersion, sdkVersion,
      const DeepCollectionEquality().hash(_flutterVersions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PanaRuntimeInfoImplCopyWith<_$PanaRuntimeInfoImpl> get copyWith =>
      __$$PanaRuntimeInfoImplCopyWithImpl<_$PanaRuntimeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanaRuntimeInfoImplToJson(
      this,
    );
  }
}

abstract class _PanaRuntimeInfo implements PanaRuntimeInfo {
  const factory _PanaRuntimeInfo(
          {required final String panaVersion,
          required final String sdkVersion,
          required final Map<String, String> flutterVersions}) =
      _$PanaRuntimeInfoImpl;

  factory _PanaRuntimeInfo.fromJson(Map<String, dynamic> json) =
      _$PanaRuntimeInfoImpl.fromJson;

  @override
  String get panaVersion;
  @override
  String get sdkVersion;
  @override
  Map<String, String> get flutterVersions;
  @override
  @JsonKey(ignore: true)
  _$$PanaRuntimeInfoImplCopyWith<_$PanaRuntimeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
mixin _$License {
  String get path => throw _privateConstructorUsedError;
  String get spdxIdentifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res, License>;
  @useResult
  $Res call({String path, String spdxIdentifier});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res, $Val extends License>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? spdxIdentifier = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      spdxIdentifier: null == spdxIdentifier
          ? _value.spdxIdentifier
          : spdxIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseImplCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$$LicenseImplCopyWith(
          _$LicenseImpl value, $Res Function(_$LicenseImpl) then) =
      __$$LicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String spdxIdentifier});
}

/// @nodoc
class __$$LicenseImplCopyWithImpl<$Res>
    extends _$LicenseCopyWithImpl<$Res, _$LicenseImpl>
    implements _$$LicenseImplCopyWith<$Res> {
  __$$LicenseImplCopyWithImpl(
      _$LicenseImpl _value, $Res Function(_$LicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? spdxIdentifier = null,
  }) {
    return _then(_$LicenseImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      spdxIdentifier: null == spdxIdentifier
          ? _value.spdxIdentifier
          : spdxIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicenseImpl implements _License {
  const _$LicenseImpl({required this.path, required this.spdxIdentifier});

  factory _$LicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicenseImplFromJson(json);

  @override
  final String path;
  @override
  final String spdxIdentifier;

  @override
  String toString() {
    return 'License(path: $path, spdxIdentifier: $spdxIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.spdxIdentifier, spdxIdentifier) ||
                other.spdxIdentifier == spdxIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, spdxIdentifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      __$$LicenseImplCopyWithImpl<_$LicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicenseImplToJson(
      this,
    );
  }
}

abstract class _License implements License {
  const factory _License(
      {required final String path,
      required final String spdxIdentifier}) = _$LicenseImpl;

  factory _License.fromJson(Map<String, dynamic> json) = _$LicenseImpl.fromJson;

  @override
  String get path;
  @override
  String get spdxIdentifier;
  @override
  @JsonKey(ignore: true)
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
