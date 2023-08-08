/// Package Options Model

class PackageOptions {
  final bool isDiscontinued;
  final bool isUnlisted;
  final String? replacedBy;

  const PackageOptions({
    this.isDiscontinued = false,
    this.isUnlisted = false,
    this.replacedBy,
  });

  Map<String, dynamic> toMap() => {
        'isDiscontinued': isDiscontinued,
        'isUnlisted': isUnlisted,
        'replacedBy': replacedBy,
      };

  factory PackageOptions.fromMap(Map<String, dynamic> map) => PackageOptions(
        isDiscontinued: map['isDiscontinued'] as bool? ?? false,
        isUnlisted: map['isUnlisted'] as bool? ?? false,
        replacedBy: map['replacedBy'] as String?,
      );

  @override
  String toString() =>
      '''PackageOptions(isDiscontinued: $isDiscontinued, isUnlisted: $isUnlisted, replacedBy: $replacedBy)''';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageOptions &&
        other.isDiscontinued == isDiscontinued &&
        other.isUnlisted == isUnlisted &&
        other.replacedBy == replacedBy;
  }

  @override
  int get hashCode =>
      isDiscontinued.hashCode ^ isUnlisted.hashCode ^ replacedBy.hashCode;
}
