import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_score_model.freezed.dart';
part 'package_score_model.g.dart';

// ignore_for_file: lines_longer_than_80_chars

/// Package Score Model
@freezed
class PackageScore with _$PackageScore {
  const factory PackageScore({
    int? grantedPoints,
    int? maxPoints,
    required int likeCount,
    double? popularityScore,
    required List<String> tags,
    required DateTime lastUpdated,
  }) = _PackageScore;

  /// From json
  factory PackageScore.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreFromJson(json);
}

/// Package Score Card Model
@freezed
class PackageScoreCard with _$PackageScoreCard {
  const factory PackageScoreCard({
    required String packageName,
    required String packageVersion,
    required String runtimeVersion,
    required DateTime updated,
    required DartdocReport dartdocReport,
    required PanaReport panaReport,
    required String taskStatus,
  }) = _PackageScoreCard;

  /// From json
  factory PackageScoreCard.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreCardFromJson(json);
}

@freezed
class DartdocReport with _$DartdocReport {
  const factory DartdocReport({
    required String reportStatus,
  }) = _DartdocReport;

  /// From json
  factory DartdocReport.fromJson(Map<String, dynamic> json) =>
      _$DartdocReportFromJson(json);
}

@freezed
class PanaReport with _$PanaReport {
  const factory PanaReport({
    DateTime? timestamp,
    PanaRuntimeInfo? panaRuntimeInfo,
    required String reportStatus,
    required List<String> derivedTags,
    List<String>? allDependencies,
    List<License>? licenses,
    Map<String, dynamic>? report,
    Map<String, dynamic>? result,
    List<Map<String, String>>? screenshots,
    List<String>? urlProblems,
  }) = _PanaReport;

  /// From json
  factory PanaReport.fromJson(Map<String, dynamic> json) =>
      _$PanaReportFromJson(json);
}

@freezed
class PanaRuntimeInfo with _$PanaRuntimeInfo {
  const factory PanaRuntimeInfo({
    required String panaVersion,
    required String sdkVersion,
    required Map<String, String> flutterVersions,
  }) = _PanaRuntimeInfo;

  /// From json
  factory PanaRuntimeInfo.fromJson(Map<String, dynamic> json) =>
      _$PanaRuntimeInfoFromJson(json);
}

@freezed
class License with _$License {
  const factory License({
    required String path,
    required String spdxIdentifier,
  }) = _License;

  /// From json
  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
