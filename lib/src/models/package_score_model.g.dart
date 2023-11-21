// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageScoreImpl _$$PackageScoreImplFromJson(Map<String, dynamic> json) =>
    _$PackageScoreImpl(
      grantedPoints: json['grantedPoints'] as int?,
      maxPoints: json['maxPoints'] as int?,
      likeCount: json['likeCount'] as int,
      popularityScore: (json['popularityScore'] as num?)?.toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$PackageScoreImplToJson(_$PackageScoreImpl instance) =>
    <String, dynamic>{
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'likeCount': instance.likeCount,
      'popularityScore': instance.popularityScore,
      'tags': instance.tags,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$PackageScoreCardImpl _$$PackageScoreCardImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageScoreCardImpl(
      packageName: json['packageName'] as String,
      packageVersion: json['packageVersion'] as String,
      runtimeVersion: json['runtimeVersion'] as String,
      updated: DateTime.parse(json['updated'] as String),
      dartdocReport: json['dartdocReport'] == null
          ? null
          : DartdocReport.fromJson(
              json['dartdocReport'] as Map<String, dynamic>),
      panaReport: json['panaReport'] == null
          ? null
          : PanaReport.fromJson(json['panaReport'] as Map<String, dynamic>),
      taskStatus: json['taskStatus'] as String,
    );

Map<String, dynamic> _$$PackageScoreCardImplToJson(
        _$PackageScoreCardImpl instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'runtimeVersion': instance.runtimeVersion,
      'updated': instance.updated.toIso8601String(),
      'dartdocReport': instance.dartdocReport,
      'panaReport': instance.panaReport,
      'taskStatus': instance.taskStatus,
    };

_$DartdocReportImpl _$$DartdocReportImplFromJson(Map<String, dynamic> json) =>
    _$DartdocReportImpl(
      reportStatus: json['reportStatus'] as String,
    );

Map<String, dynamic> _$$DartdocReportImplToJson(_$DartdocReportImpl instance) =>
    <String, dynamic>{
      'reportStatus': instance.reportStatus,
    };

_$PanaReportImpl _$$PanaReportImplFromJson(Map<String, dynamic> json) =>
    _$PanaReportImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      panaRuntimeInfo: PanaRuntimeInfo.fromJson(
          json['panaRuntimeInfo'] as Map<String, dynamic>),
      reportStatus: json['reportStatus'] as String,
      derivedTags: (json['derivedTags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      allDependencies: (json['allDependencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      licenses: (json['licenses'] as List<dynamic>)
          .map((e) => License.fromJson(e as Map<String, dynamic>))
          .toList(),
      report: json['report'] as Map<String, dynamic>,
      result: json['result'] as Map<String, dynamic>,
      screenshots: Map<String, String>.from(json['screenshots'] as Map),
      urlProblems: (json['urlProblems'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PanaReportImplToJson(_$PanaReportImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'panaRuntimeInfo': instance.panaRuntimeInfo,
      'reportStatus': instance.reportStatus,
      'derivedTags': instance.derivedTags,
      'allDependencies': instance.allDependencies,
      'licenses': instance.licenses,
      'report': instance.report,
      'result': instance.result,
      'screenshots': instance.screenshots,
      'urlProblems': instance.urlProblems,
    };

_$PanaRuntimeInfoImpl _$$PanaRuntimeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PanaRuntimeInfoImpl(
      panaVersion: json['panaVersion'] as String,
      sdkVersion: json['sdkVersion'] as String,
      flutterVersions: Map<String, String>.from(json['flutterVersions'] as Map),
    );

Map<String, dynamic> _$$PanaRuntimeInfoImplToJson(
        _$PanaRuntimeInfoImpl instance) =>
    <String, dynamic>{
      'panaVersion': instance.panaVersion,
      'sdkVersion': instance.sdkVersion,
      'flutterVersions': instance.flutterVersions,
    };

_$LicenseImpl _$$LicenseImplFromJson(Map<String, dynamic> json) =>
    _$LicenseImpl(
      path: json['path'] as String,
      spdxIdentifier: json['spdxIdentifier'] as String,
    );

Map<String, dynamic> _$$LicenseImplToJson(_$LicenseImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'spdxIdentifier': instance.spdxIdentifier,
    };
