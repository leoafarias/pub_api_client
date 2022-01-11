// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageScore _$$_PackageScoreFromJson(Map<String, dynamic> json) =>
    _$_PackageScore(
      grantedPoints: json['grantedPoints'] as int?,
      maxPoints: json['maxPoints'] as int?,
      likeCount: json['likeCount'] as int,
      popularityScore: (json['popularityScore'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$_PackageScoreToJson(_$_PackageScore instance) =>
    <String, dynamic>{
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'likeCount': instance.likeCount,
      'popularityScore': instance.popularityScore,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_$_PackageScoreCard _$$_PackageScoreCardFromJson(Map<String, dynamic> json) =>
    _$_PackageScoreCard(
      packageName: json['packageName'] as String,
      packageVersion: json['packageVersion'] as String,
      runtimeVersion: json['runtimeVersion'] as String,
      updated: DateTime.parse(json['updated'] as String),
      packageCreated: DateTime.parse(json['packageCreated'] as String),
      packageVersionCreated:
          DateTime.parse(json['packageVersionCreated'] as String),
      grantedPubPoints: json['grantedPubPoints'] as int,
      maxPubPoints: json['maxPubPoints'] as int,
      popularityScore: (json['popularityScore'] as num).toDouble(),
      derivedTags: (json['derivedTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      flags:
          (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      reportTypes: (json['reportTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PackageScoreCardToJson(_$_PackageScoreCard instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'runtimeVersion': instance.runtimeVersion,
      'updated': instance.updated.toIso8601String(),
      'packageCreated': instance.packageCreated.toIso8601String(),
      'packageVersionCreated': instance.packageVersionCreated.toIso8601String(),
      'grantedPubPoints': instance.grantedPubPoints,
      'maxPubPoints': instance.maxPubPoints,
      'popularityScore': instance.popularityScore,
      'derivedTags': instance.derivedTags,
      'flags': instance.flags,
      'reportTypes': instance.reportTypes,
    };
