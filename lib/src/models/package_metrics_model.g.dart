// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_metrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageMetricsImpl _$$PackageMetricsImplFromJson(Map<String, dynamic> json) =>
    _$PackageMetricsImpl(
      score: PackageScore.fromJson(json['score'] as Map<String, dynamic>),
      scorecard:
          PackageScoreCard.fromJson(json['scorecard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageMetricsImplToJson(
        _$PackageMetricsImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'scorecard': instance.scorecard,
    };
