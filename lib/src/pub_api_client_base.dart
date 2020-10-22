import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pub_semver/pub_semver.dart';

import 'endpoints.dart';
import 'models/latest_version_model.dart';
import 'models/package_documentation_model.dart';
import 'models/package_metrics_model.dart';
import 'models/package_options_model.dart';
import 'models/package_publisher_model.dart';
import 'models/package_score_model.dart';
import 'models/pub_credentials_model.dart';
import 'models/pub_package_model.dart';
import 'models/search_results_model.dart';
import 'version.dart';

const _httpHeaders = {'User-Agent': 'package:pub_client/$packageVersion'};

typedef FetchFunction = Future<Map<String, dynamic>> Function(String url);

Future<Map<String, dynamic>> _baseFetch(String url) async {
  final response = await http.get(url, headers: _httpHeaders);
  return jsonDecode(response.body) as Map<String, dynamic>;
}

/// Pub API Client
class PubClient {
  final String pubUrl;
  final FetchFunction fetch;
  final PubCredentials credentials;
  final Endpoint endpoint;

  PubClient({
    this.pubUrl,
    this.credentials,
    this.fetch = _baseFetch,
  }) : endpoint = Endpoint(pubUrl);

  /// Returns the `PubPackage` information for [packageName]
  Future<PubPackage> packageInfo(String packageName) async {
    final data = await fetch(endpoint.packageInfo(packageName));
    return PubPackage.fromJson(data);
  }

  /// Returns the `PackageScore` for package [packageName]
  Future<PackageScore> packageScore(String packageName) async {
    final data = await fetch(endpoint.packageScore(packageName));
    return PackageScore.fromJson(data);
  }

  /// Returns the `PackageMetrics` for package [packageName]
  Future<PackageMetrics> packageMetrics(String packageName) async {
    final data = await fetch(endpoint.packageMetrics(packageName));
    return PackageMetrics.fromJson(data);
  }

  /// Returns the `PackageOptions` for package [packageName]
  Future<PackageOptions> packageOptions(String packageName) async {
    final data = await fetch(endpoint.packageOptions(packageName));
    return PackageOptions.fromJson(data);
  }

  /// Returns the `PackagePublisher` for package [packageName]
  Future<PackagePublisher> packagePublisher(String packageName) async {
    final data = await fetch(endpoint.packagePublisher(packageName));
    return PackagePublisher.fromJson(data);
  }

  /// Returns a list of versions that are published for package [packageName]
  Future<List<String>> packageVersions(String packageName) async {
    final data = await fetch(endpoint.packageVersions(packageName));
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
    final data = await fetch(endpoint.packageVersionInfo(packageName, version));
    return PackageVersion.fromJson(data);
  }

  /// Searches pub for [query] and can [page] results.
  /// Can filter to [publisher] and/or a [dependency]
  /// returns `SearchResults`
  Future<SearchResults> search(
    String query, {
    int page = 1,
    String publisher,
    String dependency,
  }) async {
    final publisherQuery = publisher != null ? 'publisher:$publisher ' : '';
    final dependencyQuery = dependency != null ? 'dependency:$dependency ' : '';
    final data = await fetch(
        endpoint.search('$publisherQuery$dependencyQuery$query', page));
    return SearchResults.fromJson(data);
  }

  /// Returns `PackageDocumentation` for a [packageName]
  Future<PackageDocumentation> documentation(String packageName) async {
    final data = await fetch(endpoint.packageDocumentation(packageName));
    return PackageDocumentation.fromJson(data);
  }

  /// Helper method to easily check for updates on [packageName]
  /// comparing with [currentVersion] returns `LatestVersion`
  Future<LatestVersion> checkLatest(
    String packageName, {
    String currentVersion,
  }) async {
    final package = await packageInfo(packageName);
    final latestVersion = Version.parse(package.version);
    var needUpdate = false;
    if (currentVersion != null) {
      final current = Version.parse(currentVersion);
      // Check as need update if latest version is higher
      needUpdate = latestVersion > current;
    }

    return LatestVersion(
      needUpdate: needUpdate,
      latestVersion: package.version,
      packageInfo: package,
    );
  }
}
