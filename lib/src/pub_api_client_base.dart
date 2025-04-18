import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';

import 'constants.dart';
import 'endpoints.dart';
import 'helpers/exceptions.dart';
import 'helpers/recursive_paging.dart';
import 'models/package_documentation_model.dart';
import 'models/package_like_model.dart';
import 'models/package_metrics_model.dart';
import 'models/package_options_model.dart';
import 'models/package_publisher_model.dart';
import 'models/package_score_model.dart';
import 'models/pub_package_model.dart';
import 'models/search_order.dart';
import 'models/search_results_model.dart';
import 'version.dart';

/// Pub API Client
class PubClient {
  final Endpoint endpoint;
  final String? pubUrl;
  final bool debug;
  late http.Client _client;
  late Map<String, String> _headers = {};

  PubClient({
    this.pubUrl,
    Credentials? credentials,
    http.Client? client,
    this.debug = false,
    String? userAgent,
  }) : endpoint = Endpoint(pubUrl) {
    http.Client httpClient;
    if (credentials == null) {
      httpClient = http.Client();
    } else {
      httpClient = Client(
        credentials,
        identifier: PubAuth.identifier,
        secret: PubAuth.secret,
      );
    }

    userAgent ??= 'default';

    _headers = {
      'user-agent': 'pub_api_client/$packageVersion ($userAgent)',
    };
    _client = client ?? httpClient;
  }

  Future<Map<String, dynamic>> _fetch(String url) async {
    if (debug) {
      log('Fetching: $url');
    }
    final response = await _client.get(
      Uri.parse(url),
      headers: _headers,
    );

    responseValidOrThrow(response);

    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> _put(String url) async {
    final response = await _client.put(
      Uri.parse(url),
      headers: _headers,
    );

    responseValidOrThrow(response);
    return jsonDecode(response.body) as Map<String, dynamic>;
  }

  Future<void> _delete(String url) async {
    final response = await _client.delete(
      Uri.parse(url),
      headers: _headers,
    );

    responseValidOrThrow(response);
  }

  /// Returns the `PubPackage` information for [packageName]
  Future<PubPackage> packageInfo(String packageName) async {
    final data = await _fetch(endpoint.packageInfo(packageName));

    return PubPackage.fromMap(data);
  }

  /// Returns the `PackageScore` for package [packageName]
  Future<PackageScore> packageScore(String packageName) async {
    final data = await _fetch(endpoint.packageScore(packageName));
    return PackageScore.fromMap(data);
  }

  /// Returns the `PackageMetrics` for package [packageName]
  Future<PackageMetrics?> packageMetrics(String packageName) async {
    try {
      final data = await _fetch(endpoint.packageMetrics(packageName));
      return PackageMetrics.fromMap(data);
    } on NotFoundException {
      // If the package has not been scanned, the server will return 404
      return null;
    }
  }

  /// Returns the `PackageOptions` for package [packageName]
  Future<PackageOptions> packageOptions(String packageName) async {
    final data = await _fetch(endpoint.packageOptions(packageName));
    return PackageOptions.fromMap(data);
  }

  /// Returns the `PackagePublisher` for package [packageName]
  Future<PackagePublisher> packagePublisher(String packageName) async {
    final data = await _fetch(endpoint.packagePublisher(packageName));
    return PackagePublisher.fromMap(data);
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
    final data = await _fetch(
      endpoint.packageVersionInfo(packageName, version),
    );
    return PackageVersion.fromMap(data);
  }

  /// Returns a `List<String>` of all packages listed on pub.dev
  Future<List<String>> packageNames() async {
    final data = await _fetch(endpoint.packageNames);
    final results = PackageNamesResults.fromMap(data);
    return recursivePaging(results, (url) async {
      final data = await _fetch(endpoint.nextPage(url));
      return PackageNamesResults.fromMap(data);
    });
  }

  /// Package names for name completion
  Future<List<String>> packageNameCompletion() async {
    final data = await _fetch(endpoint.packageNameCompletion);
    // This result is not paginated
    final packages = data['packages'] as List;

    /// Need to map to convert dynamic into String
    return packages.cast<String>();
  }

  /// Searches pub for [query] and can [page] results.
  /// Can specify [tags] to filter results. See [PackageTag] for details.
  /// returns `SearchResults`
  Future<SearchResults> search(
    String query, {
    int page = 1,
    SearchOrder sort = SearchOrder.top,
    List<String> tags = const [],
    List<String> topics = const [],
  }) async {
    final buffer = StringBuffer(query);
    for (final tag in tags) {
      buffer.write(' $tag');
    }

    for (final topic in topics) {
      buffer.write(' topic:$topic');
    }
    final data = await _fetch(endpoint.search(buffer.toString(), page, sort));
    return SearchResults.fromMap(data);
  }

  /// Receives [nextPageUrl]
  /// returns `SearchResults`
  Future<SearchResults> nextPage(String nextPageUrl) async {
    final data = await _fetch(endpoint.nextPage(nextPageUrl));
    return SearchResults.fromMap(data);
  }

  /// Returns `PackageDocumentation` for a [packageName]
  Future<PackageDocumentation> documentation(String packageName) async {
    final data = await _fetch(endpoint.packageDocumentation(packageName));
    return PackageDocumentation.fromMap(data);
  }

  /// Displays like status of a package
  Future<PackageLike> likePackageStatus(String name) async {
    final data = await _fetch(endpoint.likePackage(name));
    return PackageLike.fromMap(data);
  }

  /// Likes a package
  Future<PackageLike> likePackage(String name) async {
    final data = await _put(endpoint.likePackage(name));
    return PackageLike.fromMap(data);
  }

  /// Unlikes a package
  Future<void> unlikePackage(String name) =>
      _delete(endpoint.likePackage(name));

  /// List package likes
  Future<List<PackageLike>> listPackageLikes() async {
    final response = await _fetch(endpoint.likedPackages);

    final likes = response['likedPackages'] as List<dynamic>;
    return likes
        .map((like) => PackageLike.fromMap(like as Map<String, dynamic>))
        .toList();
  }

  /// Get all packages that match the query
  Future<List<PackageResult>> fetchAllPackages(
    String query, {
    List<String> tags = const [],
  }) async {
    final results = await search(query, tags: tags);
    return recursivePaging(results, nextPage);
  }

  /// Retrieves all Google packages from pub.dev
  /// Mostly used as an internal tool to generate
  /// google_packages_list.dart
  /// You should probably use that instead
  Future<List<String>> fetchGooglePackages({
    List<String> tags = const [],
  }) async {
    /// List of Google publishers on pub.dev
    const publishers = [
      'flutter.dev',
      'dart.dev',
      'material.io',
      'firebase.google.com',
      'google.dev',
      'tools.dart.dev ',
    ];

    final futures = <Future<List<PackageResult>>>[];
    for (var publisher in publishers) {
      futures.add(fetchPublisherPackages(publisher, tags: tags));
    }
    final results = await Future.wait(futures);
    final flatResults = results.expand((r) => r).toList();
    return flatResults.map((r) => r.package).toList();
  }

  /// Retrieves all the flutter favorites
  Future<List<String>> fetchFlutterFavorites() async {
    final results =
        await fetchAllPackages('', tags: [PackageTag.isFlutterFavorite]);
    return results.map((r) => r.package).toList();
  }

  Future<List<PackageResult>> fetchPublisherPackages(
    String publisherName, {
    List<String> tags = const [],
  }) =>
      fetchAllPackages('', tags: [
        PackageTag.publisher(publisherName),
        ...tags,
      ]);

  void close() {
    _client.close();
  }
}
