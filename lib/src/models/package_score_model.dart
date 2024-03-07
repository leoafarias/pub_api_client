import 'dart:convert';

import 'package:collection/collection.dart';

class PackageScore {
  final int? grantedPoints;
  final int? maxPoints;
  final int? likeCount;
  final double? popularityScore;
  final List<String>? tags;
  final DateTime lastUpdated;

  PackageScore({
    required this.grantedPoints,
    required this.maxPoints,
    required this.likeCount,
    required this.popularityScore,
    required this.tags,
    required this.lastUpdated,
  });

  PackageScore copyWith({
    int? grantedPoints,
    int? maxPoints,
    int? likeCount,
    double? popularityScore,
    List<String>? tags,
    DateTime? lastUpdated,
  }) =>
      PackageScore(
        grantedPoints: grantedPoints ?? this.grantedPoints,
        maxPoints: maxPoints ?? this.maxPoints,
        likeCount: likeCount ?? this.likeCount,
        popularityScore: popularityScore ?? this.popularityScore,
        tags: tags ?? this.tags,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );

  Map<String, dynamic> toMap() => {
        'grantedPoints': grantedPoints,
        'maxPoints': maxPoints,
        'likeCount': likeCount,
        'popularityScore': popularityScore,
        'tags': tags,
        'lastUpdated': lastUpdated.millisecondsSinceEpoch,
      };

  factory PackageScore.fromMap(Map<String, dynamic> map) => PackageScore(
        grantedPoints: map['grantedPoints']?.toInt(),
        maxPoints: map['maxPoints']?.toInt(),
        likeCount: map['likeCount']?.toInt(),
        popularityScore: map['popularityScore']?.toDouble(),
        tags: List<String>.from(map['tags']),
        lastUpdated: DateTime.parse(map['lastUpdated']),
      );

  String toJson() => json.encode(toMap());

  factory PackageScore.fromJson(String source) =>
      PackageScore.fromMap(json.decode(source));

  @override
  String toString() =>
      'PackageScore(grantedPoints: $grantedPoints, maxPoints: $maxPoints, likeCount: $likeCount, popularityScore: $popularityScore, tags: $tags, lastUpdated: $lastUpdated)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PackageScore &&
        other.grantedPoints == grantedPoints &&
        other.maxPoints == maxPoints &&
        other.likeCount == likeCount &&
        other.popularityScore == popularityScore &&
        listEquals(other.tags, tags) &&
        other.lastUpdated == lastUpdated;
  }

  @override
  int get hashCode =>
      grantedPoints.hashCode ^
      maxPoints.hashCode ^
      likeCount.hashCode ^
      popularityScore.hashCode ^
      tags.hashCode ^
      lastUpdated.hashCode;
}
