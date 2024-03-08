import 'package:dart_mappable/dart_mappable.dart';

import '../../pub_api_client.dart';

part 'package_metrics_model.mapper.dart';

/// Package Metrics Model
@MappableClass()
class PackageMetrics with PackageMetricsMappable {
  final PackageScore score;
  final PackageScoreCard scorecard;
  const PackageMetrics({
    required this.score,
    required this.scorecard,
  });

  static const fromMap = PackageMetricsMapper.fromMap;
  static const fromJson = PackageMetricsMapper.fromJson;
}
