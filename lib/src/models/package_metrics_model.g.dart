// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_metrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageMetrics _$_$_PackageMetricsFromJson(Map<String, dynamic> json) {
  return _$_PackageMetrics(
    score: json['score'] == null
        ? null
        : PackageScore.fromJson(json['score'] as Map<String, dynamic>),
    scorecard: json['scorecard'] == null
        ? null
        : PackageScoreCard.fromJson(json['scorecard'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PackageMetricsToJson(_$_PackageMetrics instance) =>
    <String, dynamic>{
      'score': instance.score,
      'scorecard': instance.scorecard,
    };
