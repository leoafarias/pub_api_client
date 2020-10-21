import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pub_api_client/src/endpoints.dart';
import 'package:pub_api_client/src/models/latest_version_model.dart';
import 'package:pub_api_client/src/models/package_documentation_model.dart';
import 'package:pub_api_client/src/models/package_metrics_model.dart';
import 'package:pub_api_client/src/models/package_options_model.dart';
import 'package:pub_api_client/src/models/package_publisher_model.dart';

import 'package:pub_api_client/src/models/package_score_model.dart';
import 'package:pub_api_client/src/models/pub_credentials_model.dart';
import 'package:pub_api_client/src/models/pub_package_model.dart';
import 'package:pub_api_client/src/models/search_results_model.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pub_semver/pub_semver.dart';

final _httpHeaders = {'User-Agent': 'package:pub_client/$packageVersion'};

typedef FetchFunction = Future<Map<String, dynamic>> Function(String url);

Future<Map<String, dynamic>> _baseFetch(String url) async {
  final response = await http.get(url, headers: _httpHeaders);
  return jsonDecode(response.body);
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

  /// Returns the package information for `packageName`
  Future<PubPackage> packageInfo(String packageName) async {
    final data = await fetch(endpoint.packageInfo(packageName));
    return PubPackage.fromJson(data);
  }

  /// Returns the score for package `packageName`
  Future<PackageScore> packageScore(String packageName) async {
    final data = await fetch(endpoint.packageScore(packageName));
    return PackageScore.fromJson(data);
  }

  /// Returns the metrics for package `packageName`
  Future<PackageMetrics> packageMetrics(String packageName) async {
    final data = await fetch(endpoint.packageMetrics(packageName));
    return PackageMetrics.fromJson(data);
  }

  /// Returns the options for package `packageName`
  Future<PackageOptions> packageOptions(String packageName) async {
    final data = await fetch(endpoint.packageOptions(packageName));
    return PackageOptions.fromJson(data);
  }

  /// Returns the publisher for package `packageName`
  Future<PackagePublisher> packagePublisher(String packageName) async {
    final data = await fetch(endpoint.packagePublisher(packageName));
    return PackagePublisher.fromJson(data);
  }

  /// Returns the versions that are published for package `packageName`
  Future<List<String>> packageVersions(String packageName) async {
    final data = await fetch(endpoint.packageVersions(packageName));
    final json = data;
    final versions = <String>[];
    for (var version in json['versions']) {
      versions.add(version);
    }
    return versions;
  }

  /// Returns info for a `version` of an specific `packageName`;
  Future<PackageVersion> packageVersionInfo(
      String packageName, String version) async {
    final data = await fetch(endpoint.packageVersionInfo(packageName, version));
    return PackageVersion.fromJson(data);
  }

  /// Searches pub for `query` and can `page` results.
  Future<SearchResults> search(String query, {int page = 1}) async {
    final data = await fetch(endpoint.search(query, page));
    return SearchResults.fromJson(data);
  }

  /// Lists documentation versions
  Future<PackageDocumentation> documentation(String packageName) async {
    final data = await fetch(endpoint.packageDocumentation(packageName));
    return PackageDocumentation.fromJson(data);
  }

  /// Helper method to easily check for package updates if `currentVersion`
  /// is provided. Also returns package information.
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
