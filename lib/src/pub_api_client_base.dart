import 'dart:convert';

import 'package:http/http.dart';

import 'endpoints.dart';
import 'helpers/http_client.dart';
import 'models/package_documentation_model.dart';
import 'models/package_metrics_model.dart';
import 'models/package_options_model.dart';
import 'models/package_publisher_model.dart';
import 'models/package_score_model.dart';
import 'models/pub_credentials_model.dart';
import 'models/pub_package_model.dart';
import 'models/search_results_model.dart';

typedef FetchFunction = Future<Map<String, dynamic>> Function(String url);

/// Pub API Client
class PubClient {
  final Endpoint endpoint;
  final String? pubUrl;
  final Client? client;
  final PubCredentials? credentials;
  late PubApiHttpClient _client;
  PubClient({
    this.pubUrl,
    this.credentials,
    this.client,
  }) : endpoint = Endpoint(pubUrl) {
    _client = PubApiHttpClient(client ?? Client());
  }

  Future<Map<String, dynamic>> _fetch(String url) async {
    final response = await _client.get(Uri.parse(url));
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  /// Returns the `PubPackage` information for [packageName]
  Future<PubPackage> packageInfo(String packageName) async {
    final data = await _fetch(endpoint.packageInfo(packageName));
    return PubPackage.fromJson(data);
  }

  /// Returns the `PackageScore` for package [packageName]
  Future<PackageScore> packageScore(String packageName) async {
    final data = await _fetch(endpoint.packageScore(packageName));
    return PackageScore.fromJson(data);
  }

  /// Returns the `PackageMetrics` for package [packageName]
  Future<PackageMetrics> packageMetrics(String packageName) async {
    final data = await _fetch(endpoint.packageMetrics(packageName));
    return PackageMetrics.fromJson(data);
  }

  /// Returns the `PackageOptions` for package [packageName]
  Future<PackageOptions> packageOptions(String packageName) async {
    final data = await _fetch(endpoint.packageOptions(packageName));

    return PackageOptions.fromJson(data);
  }

  /// Returns the `PackagePublisher` for package [packageName]
  Future<PackagePublisher> packagePublisher(String packageName) async {
    final data = await _fetch(endpoint.packagePublisher(packageName));
    return PackagePublisher.fromJson(data);
  }

  /// Returns a list of versions that are published for package [packageName]
  Future<List<String>> packageVersions(String packageName) async {
    final data = await _fetch(endpoint.packageVersions(packageName));
    final json = data;
    final versions = <String>[];
    for (var version in json['versions'] as List) {
      versions.add(version as String);
    }
    return versions;
  }

  /// Returns `PackageVersion` of an specific [packageName];
  Future<PackageVersion> packageVersionInfo(
      String packageName, String version) async {
    final data =
        await _fetch(endpoint.packageVersionInfo(packageName, version));
    return PackageVersion.fromJson(data);
  }

  /// Searches pub for [query] and can [page] results.
  /// Can filter to [publisher] and/or a [dependency]
  /// returns `SearchResults`
  Future<SearchResults> search(
    String query, {
    int page = 1,
    String? publisher,
    String? dependency,
  }) async {
    final publisherQuery = publisher != null ? 'publisher:$publisher ' : '';
    final dependencyQuery = dependency != null ? 'dependency:$dependency ' : '';
    final data = await _fetch(
        endpoint.search('$publisherQuery$dependencyQuery$query', page));
    return SearchResults.fromJson(data);
  }

  /// Receives [nextPageUrl]
  /// returns `SearchResults`
  Future<SearchResults> nextPage(String nextPageUrl) async {
    final data = await _fetch(nextPageUrl);
    return SearchResults.fromJson(data);
  }

  // Future<SearchResults> _nextSearchPage() async {}

  /// Returns `PackageDocumentation` for a [packageName]
  Future<PackageDocumentation> documentation(String packageName) async {
    final data = await _fetch(endpoint.packageDocumentation(packageName));
    return PackageDocumentation.fromJson(data);
  }
}
