class Endpoint {
  String baseUrl;
  String apiUrl;
  String searchUrl;
  String packageUrl;
  String accountUrl;

  Endpoint(String url) {
    baseUrl = url ?? 'https://pub.dartlang.org'; // Use pub.dev instead?
    apiUrl = '$baseUrl/api';
    searchUrl = '$apiUrl/search';
    packageUrl = '$apiUrl/packages';
    accountUrl = '$apiUrl/account';
  }

  String packageInfo(String name) => '$packageUrl/$name';
  String packageScore(String name) => '$packageUrl/$name/score';
  String packageMetrics(String name) => '$packageUrl/$name/metrics';
  String packageOptions(String name) => '$packageUrl/$name/options';
  String packagePublisher(String name) => '$packageUrl/$name/publisher';
  String packageDocumentation(String name) => '$apiUrl/documentation/$name';

  // Not part of API endpoint
  String packageVersions(String name) => '$baseUrl/packages/$name.json';
  String packageVersionInfo(String name, String version) =>
      '$packageUrl/$name/versions/$version';

  String search(String query, int page) => '$searchUrl?q=$query&page=$page';
}
