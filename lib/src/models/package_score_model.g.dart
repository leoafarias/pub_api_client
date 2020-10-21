// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageScore _$_$_PackageScoreFromJson(Map<String, dynamic> json) {
  return _$_PackageScore(
    grantedPoints: json['grantedPoints'] as int,
    maxPoints: json['maxPoints'] as int,
    likeCount: json['likeCount'] as int,
    popularityScore: (json['popularityScore'] as num)?.toDouble(),
    lastUpdated: json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String),
  );
}

Map<String, dynamic> _$_$_PackageScoreToJson(_$_PackageScore instance) =>
    <String, dynamic>{
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'likeCount': instance.likeCount,
      'popularityScore': instance.popularityScore,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };

_$_PackageScoreCard _$_$_PackageScoreCardFromJson(Map<String, dynamic> json) {
  return _$_PackageScoreCard(
    packageName: json['packageName'] as String,
    packageVersion: json['packageVersion'] as String,
    runtimeVersion: json['runtimeVersion'] as String,
    updated: json['updated'] == null
        ? null
        : DateTime.parse(json['updated'] as String),
    packageCreated: json['packageCreated'] == null
        ? null
        : DateTime.parse(json['packageCreated'] as String),
    packageVersionCreated: json['packageVersionCreated'] == null
        ? null
        : DateTime.parse(json['packageVersionCreated'] as String),
    grantedPubPoints: json['grantedPubPoints'] as int,
    maxPubPoints: json['maxPubPoints'] as int,
    popularityScore: (json['popularityScore'] as num)?.toDouble(),
    derivedTags:
        (json['derivedTags'] as List)?.map((e) => e as String)?.toList(),
    flags: (json['flags'] as List)?.map((e) => e as String)?.toList(),
    reportTypes:
        (json['reportTypes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PackageScoreCardToJson(
        _$_PackageScoreCard instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'runtimeVersion': instance.runtimeVersion,
      'updated': instance.updated?.toIso8601String(),
      'packageCreated': instance.packageCreated?.toIso8601String(),
      'packageVersionCreated':
          instance.packageVersionCreated?.toIso8601String(),
      'grantedPubPoints': instance.grantedPubPoints,
      'maxPubPoints': instance.maxPubPoints,
      'popularityScore': instance.popularityScore,
      'derivedTags': instance.derivedTags,
      'flags': instance.flags,
      'reportTypes': instance.reportTypes,
    };
