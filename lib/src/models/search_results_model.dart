import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_results_model.freezed.dart';
part 'search_results_model.g.dart';

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
@freezed
class PackageNamesResults extends PaginatedResults<String>
    with _$PackageNamesResults {
  const PackageNamesResults._();

  @override
  List<String> get results => packages;

  const factory PackageNamesResults({
    required List<String> packages,
    String? next,
  }) = _PackageNamesResults;

  /// From json
  factory PackageNamesResults.fromJson(Map<String, dynamic> json) =>
      _$PackageNamesResultsFromJson(json);
}

/// Search Results Model
@freezed
class SearchResults extends PaginatedResults<PackageResult>
    with _$SearchResults {
  const SearchResults._();

  @override
  List<PackageResult> get results => packages;

  const factory SearchResults({
    required List<PackageResult> packages,
    String? next,
  }) = _SearchResults;

  /// From json
  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

/// Package Result Model returns within a `SearchResult`
@freezed
class PackageResult with _$PackageResult {
  const factory PackageResult({
    required String package,
  }) = _PackageResult;

  /// From json
  factory PackageResult.fromJson(Map<String, dynamic> json) =>
      _$PackageResultFromJson(json);
}
