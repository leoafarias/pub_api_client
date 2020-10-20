import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_score_model.freezed.dart';
part 'package_score_model.g.dart';

@freezed
abstract class PackageScore with _$PackageScore {
  factory PackageScore({
    final int grantedPoints,
    final int maxPoints,
    final int likeCount,
    final double popularityScore,
    final DateTime lastUpdated,
  }) = _PackageScore;

  factory PackageScore.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreFromJson(json);
}
