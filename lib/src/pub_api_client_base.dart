import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pub_api_client/src/models/latest_version_model.dart';

import 'package:pub_api_client/src/models/package_score_model.dart';
import 'package:pub_api_client/src/models/pub_package_model.dart';
import 'package:pub_api_client/src/models/search_results_model.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pub_semver/pub_semver.dart';

const _urlBase = 'https://pub.dartlang.org';
const _searchUrl = '$_urlBase/api/search';
const _packageUrl = '$_urlBase/api/packages';

String _packageScoreUrl(String name) => '$_urlBase/api/packages/$name/score';
String _versionsUrl(String name) => 'https://pub.dev/packages/$name.json';

final _httpHeaders = {'User-Agent': 'package:pub_client/$packageVersion'};

Future<http.Response> _fetch(dynamic url) async {
  return await http.get(url, headers: _httpHeaders);
}

/// Pub API Client
class PubClient {
  PubClient();

  /// Returns the package information for `name`
  Future<PubPackage> getPackage(String name) async {
    final response = await _fetch('$_packageUrl/$name');
    return PubPackage.fromJson(jsonDecode(response.body));
  }

  /// Returns the score for package `name`
  Future<PackageScore> getScore(String name) async {
    final response = await _fetch(_packageScoreUrl(name));
    return PackageScore.fromJson(jsonDecode(response.body));
  }

  /// Searches pub for `query` and can `page` results.
  Future<SearchResults> search(String query, {int page = 1}) async {
    final response = await _fetch('$_searchUrl?q=$query&page=$page');

    return SearchResults.fromJson(jsonDecode(response.body));
  }

  /// Returns the versions that are published for package `name`
  Future<List<String>> getVersions(String name) async {
    final response = await _fetch(_versionsUrl(name));
    final json = jsonDecode(response.body);
    final versions = <String>[];
    for (var version in json['versions']) {
      versions.add(version);
    }
    return versions;
  }

  /// Helper method to easily check for package updates if `currentVersion`
  /// is provided. Also returns package information.
  Future<LatestVersion> checkLatest(
    String name, {
    String currentVersion,
  }) async {
    final package = await getPackage(name);
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
