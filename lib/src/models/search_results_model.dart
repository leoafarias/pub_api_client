import 'package:collection/collection.dart';

/// Base class for results that are paginated

abstract class PaginatedResults<T> {
  /// The current results
  List<T> get results;

  /// The URL to the next page of results
  final String? next;

  const PaginatedResults({
    this.next,
  });
}

/// Package Names Model
class PackageNamesResults extends PaginatedResults<String> {
  final List<String> packages;

  @override
  List<String> get results => packages;

  const PackageNamesResults({
    required this.packages,
    super.next,
  });

  factory PackageNamesResults.fromMap(Map<String, dynamic> map) =>
      PackageNamesResults(
        packages: (map['packages'] as List).cast<String>(),
        next: map['nextUrl'] as String?,
      );
}

/// Search Results Model
class SearchResults extends PaginatedResults<PackageResult> {
  final List<PackageResult> packages;

  @override
  List<PackageResult> get results => packages;

  const SearchResults({
    required this.packages,
    super.next,
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

  @override
  String toString() => 'SearchResults(packages: $packages, next: $next)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is SearchResults &&
        listEquals(other.packages, packages) &&
        other.next == next;
  }

  @override
  int get hashCode => packages.hashCode ^ next.hashCode;
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

  @override
  String toString() => 'PackageResult(package: $package)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageResult && other.package == package;
  }

  @override
  int get hashCode => package.hashCode;
}
