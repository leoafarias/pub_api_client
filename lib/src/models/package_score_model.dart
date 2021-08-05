import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_score_model.freezed.dart';
part 'package_score_model.g.dart';

/// Package Score Model
@freezed
class PackageScore with _$PackageScore {
  factory PackageScore({
    required final int? grantedPoints,
    required final int? maxPoints,
    required final int likeCount,
    required final double? popularityScore,
    required final DateTime lastUpdated,
  }) = _PackageScore;

  factory PackageScore.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreFromJson(json);
}

/// Package Score Card Model
@freezed
class PackageScoreCard with _$PackageScoreCard {
  factory PackageScoreCard({
    required final String packageName,
    required final String packageVersion,
    required final String runtimeVersion,
    required final DateTime updated,
    required final DateTime packageCreated,
    required final DateTime packageVersionCreated,
    required final int grantedPubPoints,
    required final int maxPubPoints,
    required final double popularityScore,
    @Default([]) final List<String> derivedTags,
    @Default([]) final List<String> flags,
    @Default([]) final List<String> reportTypes,
  }) = _PackageScoreCard;

  factory PackageScoreCard.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreCardFromJson(json);
}
