import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pub_api_client.dart';

part 'package_metrics_model.freezed.dart';
part 'package_metrics_model.g.dart';

/// Package Metrics Model
@freezed
class PackageMetrics with _$PackageMetrics {
  const factory PackageMetrics({
    required PackageScore score,
    required PackageScoreCard scorecard,
  }) = _PackageMetrics;

  /// From json
  factory PackageMetrics.fromJson(Map<String, dynamic> json) =>
      _$PackageMetricsFromJson(json);
}
