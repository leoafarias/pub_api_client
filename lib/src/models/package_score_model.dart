import 'package:dart_mappable/dart_mappable.dart';

part 'package_score_model.mapper.dart';

/// Score data for a package version.
///
/// Returned by both package-score and package-version-score requests.
@MappableClass()
class PackageScore with PackageScoreMappable {
  /// The points awarded by the latest pub.dev analysis.
  final int? grantedPoints;

  /// The maximum points available in the latest pub.dev analysis.
  final int? maxPoints;

  /// The package's public like count.
  final int likeCount;

  /// pub.dev retired the popularity score and no longer returns this field,
  /// so it is always `null`. Use [downloadCount30Days] instead.
  @Deprecated('Use downloadCount30Days instead.')
  final double? popularityScore;

  /// The package's download count over the last 30 days.
  final int? downloadCount30Days;

  /// Search tags assigned to the package version by pub.dev.
  final List<String> tags;

  /// Creates package score data.
  PackageScore({
    required this.grantedPoints,
    required this.maxPoints,
    required this.likeCount,
    required this.popularityScore,
    required this.downloadCount30Days,
    required this.tags,
  });

  /// Decodes package score data from a map.
  static const fromMap = PackageScoreMapper.fromMap;

  /// Decodes package score data from JSON.
  static const fromJson = PackageScoreMapper.fromJson;
}
