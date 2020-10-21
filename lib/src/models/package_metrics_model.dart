import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub_api_client/pub_api_client.dart';

part 'package_metrics_model.freezed.dart';
part 'package_metrics_model.g.dart';

@freezed
abstract class PackageMetrics with _$PackageMetrics {
  factory PackageMetrics({
    final PackageScore score,
    final PackageScoreCard scorecard,
  }) = _PackageMetrics;

  factory PackageMetrics.fromJson(Map<String, dynamic> json) =>
      _$PackageMetricsFromJson(json);
}
