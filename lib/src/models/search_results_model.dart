/// Search Results Model
class SearchResults {
  final List<PackageResult> packages;
  final String? next;
  const SearchResults({
    required this.packages,
    this.next,
  });

  Map<String, dynamic> toMap() => {
        'packages': packages.map((x) => x.toMap()).toList(),
        'next': next,
      };

  factory SearchResults.fromMap(Map<String, dynamic> map) {
    final packagesMap = map['packages'] as List<dynamic>? ?? [];
    return SearchResults(
      packages: List<PackageResult>.from(
        packagesMap.map(
          (x) => PackageResult.fromMap(x as Map<String, dynamic>),
        ),
      ),
      next: map['next'] as String?,
    );
  }
}

/// Package Result Model returns within a `SearchResult`
class PackageResult {
  final String package;
  const PackageResult({required this.package});

  Map<String, dynamic> toMap() => {
        'package': package,
      };

  factory PackageResult.fromMap(Map<String, dynamic> map) => PackageResult(
        package: map['package'] as String? ?? '',
      );
}
