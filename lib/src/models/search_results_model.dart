import 'package:dart_mappable/dart_mappable.dart';

part 'search_results_model.mapper.dart';

/// Search Results Model
@MappableClass()
class SearchResults with SearchResultsMappable {
  final List<PackageResult> packages;
  final String? next;
  const SearchResults({
    required this.packages,
    this.next,
  });

  static const fromMap = SearchResultsMapper.fromMap;
  static const fromJson = SearchResultsMapper.fromJson;
}

/// Package Result Model returns within a `SearchResult`
@MappableClass()
class PackageResult with PackageResultMappable {
  final String package;
  const PackageResult({required this.package});

  static const fromMap = PackageResultMapper.fromMap;
  static const fromJson = PackageResultMapper.fromJson;
}
