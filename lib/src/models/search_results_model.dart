import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_results_model.freezed.dart';
part 'search_results_model.g.dart';

@freezed
abstract class SearchResults implements _$SearchResults {
  const SearchResults._();
  factory SearchResults({
    final List<PackageResult> packages,
    String next,
  }) = _SearchResults;

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);

  Future<SearchResults> nextResults() async {
    final response = await http.get(next);
    return SearchResults.fromJson(jsonDecode(response.body));
  }
}

@freezed
abstract class PackageResult with _$PackageResult {
  factory PackageResult({String package}) = _PackageResult;

  factory PackageResult.fromJson(Map<String, dynamic> json) =>
      _$PackageResultFromJson(json);
}
