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

@freezed
abstract class PackageScoreCard with _$PackageScoreCard {
  factory PackageScoreCard({
    final String packageName,
    final String packageVersion,
    final String runtimeVersion,
    final DateTime updated,
    final DateTime packageCreated,
    final DateTime packageVersionCreated,
    final int grantedPubPoints,
    final int maxPubPoints,
    final double popularityScore,
    final List<String> derivedTags,
    final List<String> flags,
    final List<String> reportTypes,
  }) = _PackageScoreCard;

  factory PackageScoreCard.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreCardFromJson(json);
}
