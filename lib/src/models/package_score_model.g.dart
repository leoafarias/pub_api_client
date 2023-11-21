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
    );

Map<String, dynamic> _$$PackageScoreCardImplToJson(
        _$PackageScoreCardImpl instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'runtimeVersion': instance.runtimeVersion,
      'updated': instance.updated.toIso8601String(),
    };
