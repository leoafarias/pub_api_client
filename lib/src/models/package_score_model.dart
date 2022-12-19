import 'package:collection/collection.dart';

/// Package Score Model
class PackageScore {
  final int? grantedPoints;
  final int? maxPoints;
  final int likeCount;
  final double? popularityScore;
  final DateTime lastUpdated;
  const PackageScore({
    required this.grantedPoints,
    required this.maxPoints,
    required this.likeCount,
    required this.popularityScore,
    required this.lastUpdated,
  });

  Map<String, dynamic> toMap() => {
        'grantedPoints': grantedPoints,
        'maxPoints': maxPoints,
        'likeCount': likeCount,
        'popularityScore': popularityScore,
        'lastUpdated': lastUpdated.millisecondsSinceEpoch,
      };

  factory PackageScore.fromMap(Map<String, dynamic> map) => PackageScore(
        grantedPoints: map['grantedPoints'] as int? ?? 0,
        maxPoints: map['maxPoints'] as int? ?? 0,
        likeCount: map['likeCount'] as int? ?? 0,
        popularityScore: map['popularityScore'] as double? ?? 0.0,
        lastUpdated: DateTime.parse(map['lastUpdated'] as String? ?? ''),
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageScore &&
        other.grantedPoints == grantedPoints &&
        other.maxPoints == maxPoints &&
        other.likeCount == likeCount &&
        other.popularityScore == popularityScore &&
        other.lastUpdated == lastUpdated;
  }

  @override
  int get hashCode =>
      grantedPoints.hashCode ^
      maxPoints.hashCode ^
      likeCount.hashCode ^
      popularityScore.hashCode ^
      lastUpdated.hashCode;
}

/// Package Score Card Model
class PackageScoreCard {
  final String packageName;
  final String packageVersion;
  final String runtimeVersion;
  final DateTime updated;
  final DateTime packageCreated;
  final DateTime packageVersionCreated;
  final List<String> derivedTags;
  final List<String> flags;
  final List<String> reportTypes;
  const PackageScoreCard({
    required this.packageName,
    required this.packageVersion,
    required this.runtimeVersion,
    required this.updated,
    required this.packageCreated,
    required this.packageVersionCreated,
    this.derivedTags = const [],
    this.flags = const [],
    this.reportTypes = const [],
  });

  Map<String, dynamic> toMap() => {
        'packageName': packageName,
        'packageVersion': packageVersion,
        'runtimeVersion': runtimeVersion,
        'updated': updated.millisecondsSinceEpoch,
        'packageCreated': packageCreated.millisecondsSinceEpoch,
        'packageVersionCreated': packageVersionCreated.millisecondsSinceEpoch,
        'derivedTags': derivedTags,
        'flags': flags,
        'reportTypes': reportTypes,
      };

  factory PackageScoreCard.fromMap(Map<String, dynamic> map) =>
      PackageScoreCard(
        packageName: map['packageName'] as String? ?? '',
        packageVersion: map['packageVersion'] as String? ?? '',
        runtimeVersion: map['runtimeVersion'] as String? ?? '',
        updated: DateTime.parse(map['updated'] as String? ?? ''),
        packageCreated: DateTime.parse(map['packageCreated'] as String? ?? ''),
        packageVersionCreated:
            DateTime.parse(map['packageVersionCreated'] as String? ?? ''),
        derivedTags:
            List<String>.from(map['derivedTags'] as List<dynamic>? ?? []),
        flags: List<String>.from(map['flags'] as List<dynamic>? ?? []),
        reportTypes:
            List<String>.from(map['reportTypes'] as List<dynamic>? ?? []),
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PackageScoreCard &&
        other.packageName == packageName &&
        other.packageVersion == packageVersion &&
        other.runtimeVersion == runtimeVersion &&
        other.updated == updated &&
        other.packageCreated == packageCreated &&
        other.packageVersionCreated == packageVersionCreated &&
        listEquals(other.derivedTags, derivedTags) &&
        listEquals(other.flags, flags) &&
        listEquals(other.reportTypes, reportTypes);
  }

  @override
  int get hashCode =>
      packageName.hashCode ^
      packageVersion.hashCode ^
      runtimeVersion.hashCode ^
      updated.hashCode ^
      packageCreated.hashCode ^
      packageVersionCreated.hashCode ^
      derivedTags.hashCode ^
      flags.hashCode ^
      reportTypes.hashCode;
}
