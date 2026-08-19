import 'models/search_order.dart';

/// Pub.dev api Endpoints
class Endpoint {
  static const defaultBaseUrl = 'https://pub.dev';

  final String baseUrl;
  late final String apiUrl;
  late final String searchUrl;
  late final String packageUrl;
  late final String publisherUrl;
  late final String accountUrl;

  /// Constructor for API endpoints based on an [url]
  Endpoint(String? url) : baseUrl = url ?? defaultBaseUrl {
    apiUrl = '$baseUrl/api';
    searchUrl = '$apiUrl/search';
    packageUrl = '$apiUrl/packages';
    publisherUrl = '$apiUrl/publishers';
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

  /// The public package-like count endpoint.
  String packageLikes(String name) => '$packageUrl/$name/likes';

  /// Package documentation endpoint
  String packageDocumentation(String name) => '$apiUrl/documentation/$name';

  /// Security advisories endpoint
  String packageAdvisories(String name) => '$packageUrl/$name/advisories';

  // Not part of API endpoint
  /// Package versions endpoint
  String packageVersions(String name) => '$baseUrl/packages/$name.json';

  /// Package version info endpoint
  String packageVersionInfo(String name, String version) =>
      '$packageUrl/$name/versions/$version';

  /// The score endpoint for one package version.
  String packageVersionScore(String name, String version) =>
      '${packageVersionInfo(name, version)}/score';

  /// The options endpoint for one package version.
  String packageVersionOptions(String name, String version) =>
      '${packageVersionInfo(name, version)}/options';

  /// The public publisher-profile endpoint.
  String publisherInfo(String publisherId) => '$publisherUrl/$publisherId';

  /// Retrieve all package names on pub.dev
  String get packageNames => '$apiUrl/package-names';

  /// Package names for name completion
  String get packageNameCompletion => '$apiUrl/package-name-completion-data';

  /// Topic names, with the number of packages using each topic.
  String get topicNameCompletion => '$apiUrl/topic-name-completion-data';

  /// Url to add and remove likes
  String likePackage(String name) => '$accountUrl/likes/$name';

  /// Liked packages
  String get likedPackages => '$accountUrl/likes';

  /// Search endpoint
  ///
  /// [query] carries the free text along with any `tag:value` filters, so it
  /// is percent-encoded here. Interpolating it raw would let characters like
  /// `#` and `&` terminate the query string.
  String search(
    String query,
    int page,
    SearchOrder sort,
  ) =>
      Uri.parse(searchUrl).replace(queryParameters: {
        'q': query,
        'page': '$page',
        'sort': sort.name,
      }).toString();

  /// Next search page
  String nextPage(String nextPageUrl) =>
      nextPageUrl.replaceFirst(defaultBaseUrl, baseUrl);
}
