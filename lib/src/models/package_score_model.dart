import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_score_model.freezed.dart';
part 'package_score_model.g.dart';

// ignore_for_file: lines_longer_than_80_chars

/// Package Score Model
@freezed
class PackageScore with _$PackageScore {
  const factory PackageScore({
    int? grantedPoints,
    int? maxPoints,
    required int likeCount,
    double? popularityScore,
    required List<String> tags,
    required DateTime lastUpdated,
  }) = _PackageScore;

  /// From json
  factory PackageScore.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreFromJson(json);
}

/// Package Score Card Model
@freezed
class PackageScoreCard with _$PackageScoreCard {
  const factory PackageScoreCard({
    required String packageName,
    required String packageVersion,
    required String runtimeVersion,
    required DateTime updated,
  }) = _PackageScoreCard;

  /// From json
  factory PackageScoreCard.fromJson(Map<String, dynamic> json) =>
      _$PackageScoreCardFromJson(json);
}
