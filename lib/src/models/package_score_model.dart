import 'package:dart_mappable/dart_mappable.dart';

part 'package_score_model.mapper.dart';

/// Maps pub.dev's `VersionScore`, which backs both
/// `/api/packages/<pkg>/score` and `/api/packages/<pkg>/versions/<v>/score` —
/// one server-side DTO and handler serve both routes.
///
/// `VersionScore` declares `likeCount` and `tags` nullable, but pub.dev's
/// handler always assigns them (`pkg.likes` and a built tag set), and they
/// were non-null across every package probed, including brand-new ones. They
/// stay non-nullable here; widening them would break consumers for a case the
/// server does not produce.
@MappableClass()
class PackageScore with PackageScoreMappable {
  final int? grantedPoints;
  final int? maxPoints;
  final int likeCount;

  /// pub.dev retired the popularity score and no longer returns this field,
  /// so it is always `null`. Use [downloadCount30Days] instead.
  final double? popularityScore;
  final int? downloadCount30Days;
  final List<String> tags;

  PackageScore({
    required this.grantedPoints,
    required this.maxPoints,
    required this.likeCount,
    required this.popularityScore,
    required this.downloadCount30Days,
    required this.tags,
  });

  static const fromMap = PackageScoreMapper.fromMap;
  static const fromJson = PackageScoreMapper.fromJson;
}
