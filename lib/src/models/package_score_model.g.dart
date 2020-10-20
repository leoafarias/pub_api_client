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
