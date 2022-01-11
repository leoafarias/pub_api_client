import 'models/search_order.dart';

/// Pub.dev api Endpoints
class Endpoint {
  static const defaultBaseUrl =
      'https://pub.dartlang.org'; // Use pub.dev instead?

  final String baseUrl;
  late final String apiUrl;
  late final String searchUrl;
  late final String packageUrl;
  late final String accountUrl;

  /// Constructor for API endpoints based on an [url]
  Endpoint(String? url) : baseUrl = url ?? defaultBaseUrl {
    apiUrl = '$baseUrl/api';
    searchUrl = '$apiUrl/search';
    packageUrl = '$apiUrl/packages';
    accountUrl = '$apiUrl/account';
  }

  /// Package info endpoint
  String packageInfo(String name) => '$packageUrl/$name';

  /// Package score endpoint
  String packageScore(String name) => '$packageUrl/$name/score';

  /// Package metrics endpoint
  String packageMetrics(String name) => '$packageUrl/$name/metrics';

  /// Package options endpoint
  String packageOptions(String name) => '$packageUrl/$name/options';

  /// Package publisher endpoint
  String packagePublisher(String name) => '$packageUrl/$name/publisher';

  /// Package documentation endpoint
  String packageDocumentation(String name) => '$apiUrl/documentation/$name';

  // Not part of API endpoint
  /// Package versions endpoint
  String packageVersions(String name) => '$baseUrl/packages/$name.json';

  /// Package version info endpoint
  String packageVersionInfo(String name, String version) =>
      '$packageUrl/$name/versions/$version';

  /// Retrieve all package names on pub.dev
  String get packageNames => '$apiUrl/package-names';

  /// Url to add and remove likes
  String likePackage(String name) => '$accountUrl/likes/$name';

  /// Liked packages
  String get likedPackages => '$accountUrl/likes';

  /// Search endpoint
  String search(
    String query,
    int page,
    SearchOrder sort,
  ) =>
      '$searchUrl?q=$query&page=$page&sort=${sort.value}';

  /// Next search page
  String nextPage(String nextPageUrl) =>
      nextPageUrl.replaceFirst(defaultBaseUrl, baseUrl);
}
