import '../../pub_api_client.dart';

/// Package Metrics Model

class PackageMetrics {
  final PackageScore score;
  final PackageScoreCard scorecard;
  const PackageMetrics({
    required this.score,
    required this.scorecard,
  });

  Map<String, dynamic> toMap() => {
        'score': score.toMap(),
        'scorecard': scorecard.toMap(),
      };

  factory PackageMetrics.fromMap(Map<String, dynamic> map) => PackageMetrics(
        score: PackageScore.fromMap(map['score'] as Map<String, dynamic>),
        scorecard:
            PackageScoreCard.fromMap(map['scorecard'] as Map<String, dynamic>),
      );
}
