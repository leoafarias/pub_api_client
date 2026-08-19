import 'package:dart_mappable/dart_mappable.dart';

part 'package_score_model.mapper.dart';

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
