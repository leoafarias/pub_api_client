import '../../pub_api_client.dart';
import 'package_score_card.dart';

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

  @override
  String toString() => 'PackageMetrics(score: $score, scorecard: $scorecard)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageMetrics &&
        other.score == score &&
        other.scorecard == scorecard;
  }

  @override
  int get hashCode => score.hashCode ^ scorecard.hashCode;
}
