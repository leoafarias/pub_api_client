import 'package:pub_api_client/src/endpoints.dart';
import 'package:pub_api_client/src/models/search_order.dart';
import 'package:test/test.dart';

void main() {
  group('Endpoint', () {
    late Endpoint endpoint;

    setUp(() {
      endpoint = Endpoint(null);
    });

    test('constructor uses default base URL when null is provided', () {
      expect(endpoint.baseUrl, equals(Endpoint.defaultBaseUrl));
    });

    test('constructor uses custom base URL when provided', () {
      final customEndpoint = Endpoint('https://custom.pub.dev');
      expect(customEndpoint.baseUrl, equals('https://custom.pub.dev'));
    });

    test('packageInfo returns correct URL', () {
      expect(endpoint.packageInfo('flutter'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/flutter'));
    });

    test('packageScore returns correct URL', () {
      expect(endpoint.packageScore('dart'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/dart/score'));
    });

    test('packageMetrics returns correct URL', () {
      expect(endpoint.packageMetrics('http'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/http/metrics'));
    });

    test('packageOptions returns correct URL', () {
      expect(endpoint.packageOptions('test'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/test/options'));
    });

    test('packagePublisher returns correct URL', () {
      expect(endpoint.packagePublisher('bloc'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/bloc/publisher'));
    });

    test('packageLikes returns correct URL', () {
      expect(endpoint.packageLikes('bloc'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/bloc/likes'));
    });

    test('publisherInfo returns correct URL', () {
      expect(endpoint.publisherInfo('dart.dev'),
          equals('${Endpoint.defaultBaseUrl}/api/publishers/dart.dev'));
    });

    test('packageDocumentation returns correct URL', () {
      expect(endpoint.packageDocumentation('provider'),
          equals('${Endpoint.defaultBaseUrl}/api/documentation/provider'));
    });

    test('packageAdvisories returns correct URL', () {
      expect(endpoint.packageAdvisories('http'),
          equals('${Endpoint.defaultBaseUrl}/api/packages/http/advisories'));
    });

    test('packageVersions returns correct URL', () {
      expect(endpoint.packageVersions('rxdart'),
          equals('${Endpoint.defaultBaseUrl}/packages/rxdart.json'));
    });

    test('packageVersionInfo returns correct URL', () {
      expect(
          endpoint.packageVersionInfo('get_it', '1.0.0'),
          equals(
              '${Endpoint.defaultBaseUrl}/api/packages/get_it/versions/1.0.0'));
    });

    test('packageVersionScore returns correct URL', () {
      expect(
          endpoint.packageVersionScore('get_it', '1.0.0'),
          equals('${Endpoint.defaultBaseUrl}'
              '/api/packages/get_it/versions/1.0.0/score'));
    });

    test('packageVersionOptions returns correct URL', () {
      expect(
          endpoint.packageVersionOptions('get_it', '1.0.0'),
          equals('${Endpoint.defaultBaseUrl}'
              '/api/packages/get_it/versions/1.0.0/options'));
    });

    test('packageNames returns correct URL', () {
      expect(endpoint.packageNames,
          equals('${Endpoint.defaultBaseUrl}/api/package-names'));
    });

    test('topicNameCompletion returns correct URL', () {
      expect(endpoint.topicNameCompletion,
          equals('${Endpoint.defaultBaseUrl}/api/topic-name-completion-data'));
    });

    test('likePackage returns correct URL', () {
      expect(endpoint.likePackage('dio'),
          equals('${Endpoint.defaultBaseUrl}/api/account/likes/dio'));
    });

    test('likedPackages returns correct URL', () {
      expect(endpoint.likedPackages,
          equals('${Endpoint.defaultBaseUrl}/api/account/likes'));
    });

    test('search returns correct URL with parameters', () {
      expect(
          endpoint.search('flutter', 1, SearchOrder.top),
          equals(
              '${Endpoint.defaultBaseUrl}/api/search?q=flutter&page=1&sort=top'));
    });

    test('search percent-encodes the query', () {
      final url = endpoint.search(
          'c# & c++ publisher:dart.dev', 2, SearchOrder.downloads);

      expect(Uri.parse(url).queryParameters, {
        'q': 'c# & c++ publisher:dart.dev',
        'page': '2',
        'sort': 'downloads',
      });
    });

    test('nextPage returns correct URL with custom base URL', () {
      final customEndpoint = Endpoint('https://custom.pub.dev');
      expect(
          customEndpoint
              .nextPage('https://pub.dev/api/search?q=flutter&page=2'),
          equals('https://custom.pub.dev/api/search?q=flutter&page=2'));
    });
  });
}
