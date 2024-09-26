import 'dart:io';

import 'package:http/http.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

const packageName = 'fvm';
final _client = PubClient(
  debug: true,
  // client: LocalJsonClient('./test/fixtures', true),
);

void main() {
  group('PubDev Client', () {
    test('Can Fetch package info', () async {
      final packageInfo = await _client.packageInfo(packageName);

      final lastPubspec = packageInfo.latestPubspec;
      expect(packageInfo.version, lastPubspec.version.toString());
      expect(packageInfo.description, lastPubspec.description);
      expect(packageInfo.url, 'https://pub.dev/packages/$packageName');
      expect(packageInfo.name, packageName);
    });

    test('Get package versions', () async {
      final packageInfo = await _client.packageInfo(packageName);
      final payload = await _client.packageVersions(packageName);

      expect(payload.length, greaterThan(0));
      expect(payload.length, packageInfo.versions.length);
    });

    test('Get package score', () async {
      final payload = await _client.packageScore(packageName);

      expect(payload.lastUpdated, isNotNull);
      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, greaterThan(100));
    });

    test('Get package metrics', () async {
      final score = await _client.packageScore(packageName);
      final metrics = await _client.packageMetrics(packageName);

      if (metrics != null) {
        expect(metrics.score, score);
        expect(metrics.scorecard.packageName, 'fvm');
        expect(metrics.score.maxPoints, greaterThan(100));
        expect(metrics.score.maxPoints, score.maxPoints);
      }
    });

    test('Get package version info', () async {
      final package = await _client.packageInfo(packageName);
      final version = await _client.packageVersionInfo(
        packageName,
        package.version,
      );

      expect(package.latest.archiveUrl, version.archiveUrl);
      expect(package.version, version.version);
    });
    test('Get package options', () async {
      final options = await _client.packageOptions(packageName);

      expect(options.isUnlisted, false);
      expect(options.isDiscontinued, false);
      expect(options.replacedBy, null);
    });

    test('Get package publisher', () async {
      final publisher = await _client.packagePublisher(packageName);
      expect(publisher.publisherId, 'leoafarias.com');
    });

    test('Get package publisher if unregistered', () async {
      final unregisterPublisher = await _client.packagePublisher('p');
      expect(unregisterPublisher.publisherId, null);
    });

    test('Get Package Score', () async {
      final payload = await _client.packageScore(packageName);

      expect(payload.lastUpdated, isNotNull);
      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, greaterThan(100));
    });

    test('Search for packages', () async {
      final payload = await _client.search('json');
      final nextPagePayload = await _client.nextPage(payload.next ?? '');
      expect(payload.packages.length, greaterThan(1));
      expect(nextPagePayload.packages.length, greaterThan(1));
    });

    test('Sort search results for packages', () async {
      final updated = await _client.search('', sort: SearchOrder.updated);
      final popularity = await _client.search('', sort: SearchOrder.popularity);
      final points = await _client.search('', sort: SearchOrder.points);
      final created = await _client.search('', sort: SearchOrder.created);
      final text = await _client.search('', sort: SearchOrder.text);
      final top = await _client.search('');

      final updatedCopy = await _client.search('', sort: SearchOrder.updated);

      expect(updated, isNot(popularity));
      expect(popularity, isNot(points));
      expect(points, isNot(updated));
      expect(updated, isNot(created));
      expect(created, isNot(text));
      expect(text, isNot(top));
      expect(top, isNot(updated));

      expect(updated, updatedCopy);

      expect(SearchOrder.points.value, 'points');
      expect(SearchOrder.popularity.value, 'popularity');
      expect(SearchOrder.created.value, 'created');
      expect(SearchOrder.text.value, 'text');
      expect(SearchOrder.top.value, 'top');
      expect(SearchOrder.like.value, 'like');
    });

    test('Search for packages of a publisher', () async {
      final payload = await _client
          .search('', tags: [PackageTag.publisher('leoafarias.com')]);
      final nextPagePayload = await _client.search(
        '',
        tags: [PackageTag.dependency('pub_api_client')],
      );
      expect(payload.packages.length, greaterThan(0));
      expect(nextPagePayload.packages.length, greaterThan(0));
    });

    test('Get documentation', () async {
      final documentation = await _client.documentation(packageName);
      expect(documentation.versions.length, greaterThan(0));
    });

    test('Get package names', () async {
      final packages = await _client.packageNameCompletion();
      expect(packages.length, greaterThan(20000));
    });

    test('Get package topics', () async {
      final results = await _client.search('', topics: ['ffi']);
      final zeroResults = await _client.search('', topics: ['h8haisd091']);

      expect(results.packages.length, greaterThan(0));
      expect(zeroResults.packages.length, 0);
    });

    test('Exceptions', () async {
      void mockRes(int code) {
        final res = Response('{error:{message:"test"}}', code);
        responseValidOrThrow(res);
      }

      void ok() => mockRes(HttpStatus.ok);
      void badRequest() => mockRes(HttpStatus.badRequest);
      void notFound() => mockRes(HttpStatus.notFound);
      void unauthorized() => mockRes(HttpStatus.unauthorized);
      void unknown() => mockRes(541);
      void forbidden() => mockRes(HttpStatus.forbidden);
      void internalServerError() => mockRes(HttpStatus.internalServerError);

      expect(ok, returnsNormally);
      expect(badRequest, throwsA(isA<BadRequestException>()));
      expect(notFound, throwsA(isA<NotFoundException>()));
      expect(unauthorized, throwsA(isA<UnauthorizedException>()));
      expect(unknown, throwsA(isA<UnknownException>()));
      expect(forbidden, throwsA(isA<ForbiddenException>()));
      expect(internalServerError, throwsA(isA<InternalServerError>()));
    });
  });

  test('Fetch publisher packages', () async {
    final packages = await _client.fetchPublisherPackages('dart.dev');
    expect(packages.length, greaterThan(0));
  });
}
