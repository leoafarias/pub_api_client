import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_results_model.freezed.dart';
part 'search_results_model.g.dart';

/// Search Results Model
@freezed
abstract class SearchResults implements _$SearchResults {
  const SearchResults._();
  factory SearchResults({
    required final List<PackageResult> packages,
    final String? next,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);
}

/// Package Result Model returns within a `SearchResult`
@freezed
class PackageResult with _$PackageResult {
  factory PackageResult({required String package}) = _PackageResult;

  factory PackageResult.fromJson(Map<String, dynamic> json) =>
      _$PackageResultFromJson(json);
}
