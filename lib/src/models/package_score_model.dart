import 'package:dart_mappable/dart_mappable.dart';

part 'package_score_model.mapper.dart';

@MappableClass()
class PackageScore with PackageScoreMappable {
  final int? grantedPoints;
  final int? maxPoints;
  final int likeCount;
  final double? popularityScore;
  final int? downloadCount30Days;
  final List<String> tags;
  final DateTime? lastUpdated;

  PackageScore({
    required this.grantedPoints,
    required this.maxPoints,
    required this.likeCount,
    required this.popularityScore,
    required this.downloadCount30Days,
    required this.tags,
    required this.lastUpdated,
  });

  static const fromMap = PackageScoreMapper.fromMap;
  static const fromJson = PackageScoreMapper.fromJson;
}
