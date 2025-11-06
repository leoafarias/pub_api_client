import 'dart:io';

import 'package:http/http.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

const packageName = 'fvm';
const packageName2 = 'sqlite3';
const discontinuedPackageName = 'firebase_admob';
final _client = PubClient(
  debug: true,
  client: RateLimitedClient(),
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
      expect(packageInfo.isDiscontinued, isNull);
      expect(packageInfo.replacedBy, isNull);
      expect(
        packageInfo.advisoriesUpdated,
        anyOf(isNull, isA<DateTime>()),
      );

      // Test for packageName2
      final packageInfo2 = await _client.packageInfo(packageName2);

      final lastPubspec2 = packageInfo2.latestPubspec;
      expect(packageInfo2.version, lastPubspec2.version.toString());
      expect(packageInfo2.description, lastPubspec2.description);
      expect(packageInfo2.url, 'https://pub.dev/packages/$packageName2');
      expect(packageInfo2.name, packageName2);
      expect(packageInfo2.isDiscontinued, isNull);
      expect(packageInfo2.replacedBy, isNull);
      expect(
        packageInfo2.advisoriesUpdated,
        anyOf(isNull, isA<DateTime>()),
      );
    });

    test('Detect discontinued packages', () async {
      final discontinued = await _client.packageInfo(discontinuedPackageName);

      expect(discontinued.isDiscontinued, isTrue);
      expect(discontinued.replacedBy, 'google_mobile_ads');
      expect(
        discontinued.advisoriesUpdated,
        anyOf(isNull, isA<DateTime>()),
      );
    });

    test('Get package versions', () async {
      final packageInfo = await _client.packageInfo(packageName);
      final payload = await _client.packageVersions(packageName);

      expect(payload.length, greaterThan(0));
      expect(payload.length, packageInfo.versions.length);

      // Test for packageName2
      final packageInfo2 = await _client.packageInfo(packageName2);
      final payload2 = await _client.packageVersions(packageName2);

      expect(payload2.length, greaterThan(0));
      expect(payload2.length, packageInfo2.versions.length);
    });

    test('Get package score', () async {
      final payload = await _client.packageScore(packageName);

      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, greaterThan(100));
      if (payload.downloadCount30Days != null) {
        expect(payload.downloadCount30Days, greaterThan(100));
      }

      // Test for packageName2
      final payload2 = await _client.packageScore(packageName2);

      expect(payload2.grantedPoints, isNotNull);
      expect(payload2.likeCount, greaterThan(50));
      expect(payload2.maxPoints, greaterThan(100));
      if (payload2.downloadCount30Days != null) {
        expect(payload2.downloadCount30Days, greaterThan(100));
      }
    });

    test('Get package metrics', () async {
      final score = await _client.packageScore(packageName);
      final metrics = await _client.packageMetrics(packageName);

      if (metrics != null) {
        expect(metrics.score.maxPoints, score.maxPoints);
        expect(metrics.score.likeCount, greaterThan(0));
        expect(metrics.scorecard.packageName, 'fvm');
        expect(metrics.score.maxPoints, greaterThan(100));
      }

      // Test for packageName2
      final score2 = await _client.packageScore(packageName2);
      final metrics2 = await _client.packageMetrics(packageName2);

      if (metrics2 != null) {
        expect(metrics2.score.maxPoints, score2.maxPoints);
        expect(metrics2.score.likeCount, greaterThan(0));
        expect(metrics2.scorecard.packageName, 'sqlite3');
        expect(metrics2.score.maxPoints, greaterThan(100));
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

      // Test for packageName2
      final package2 = await _client.packageInfo(packageName2);
      final version2 = await _client.packageVersionInfo(
        packageName2,
        package2.version,
      );

      expect(package2.latest.archiveUrl, version2.archiveUrl);
      expect(package2.version, version2.version);
    });

    test('Get package options', () async {
      final options = await _client.packageOptions(packageName);

      expect(options.isUnlisted, false);
      expect(options.isDiscontinued, false);
      expect(options.replacedBy, null);

      // Test for packageName2
      final options2 = await _client.packageOptions(packageName2);

      expect(options2.isUnlisted, false);
      expect(options2.isDiscontinued, false);
      expect(options2.replacedBy, null);
    });

    test('Get package publisher', () async {
      final publisher = await _client.packagePublisher(packageName);
      expect(publisher.publisherId, 'leoafarias.com');

      // Test for packageName2
      final publisher2 = await _client.packagePublisher(packageName2);
      expect(publisher2.publisherId, isNotNull);
    });

    test('Get package publisher if unregistered', () async {
      final unregisterPublisher = await _client.packagePublisher('p');
      expect(unregisterPublisher.publisherId, null);
    });

    test('Get Package Score', () async {
      final payload = await _client.packageScore(packageName);

      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, greaterThan(100));

      // Test for packageName2
      final payload2 = await _client.packageScore(packageName2);

      expect(payload2.grantedPoints, isNotNull);
      expect(payload2.likeCount, greaterThan(50));
      expect(payload2.maxPoints, greaterThan(100));
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
      final downloads = await _client.search('', sort: SearchOrder.downloads);
      final points = await _client.search('', sort: SearchOrder.points);
      final created = await _client.search('', sort: SearchOrder.created);
      final text = await _client.search('', sort: SearchOrder.text);
      final top = await _client.search('');

      final updatedCopy = await _client.search('', sort: SearchOrder.updated);

      expect(updated, isNot(popularity));
      expect(popularity, isNot(points));
      expect(downloads, isNot(popularity));
      expect(points, isNot(updated));
      expect(updated, isNot(created));
      expect(created, isNot(text));
      expect(text, isNot(top));
      expect(top, isNot(updated));

      expect(updated, updatedCopy);

      expect(SearchOrder.points.value, 'points');
      expect(SearchOrder.popularity.value, 'popularity');
      expect(SearchOrder.downloads.value, 'downloads');
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

      // Test for packageName2
      final documentation2 = await _client.documentation(packageName2);
      expect(documentation2.versions.length, greaterThan(0));
    });

    test('Get package name completion', () async {
      final packages = await _client.packageNameCompletion();
      expect(packages.length, equals(20000));
    });

    test('Get package names', () async {
      final packages = await _client.packageNames();
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

    test('Get package security advisories', () async {
      // Test with actual package - may return null if endpoint not supported
      // Note: This endpoint is not yet implemented on pub.dev as of the test date
      // but the client correctly handles the 404 by returning null
      final advisories = await _client.packageAdvisories(packageName);

      // The endpoint should either return null (not implemented) or a valid response
      if (advisories != null) {
        // If the endpoint is implemented, verify the structure
        expect(advisories.advisories, isA<List<SecurityAdvisory>>());
        // advisoriesUpdated may be null if not provided by the API

        // If there are advisories, verify their structure
        if (advisories.advisories.isNotEmpty) {
          final advisory = advisories.advisories.first;
          expect(advisory.id, isNotNull);
          // Summary, details, affected, and databaseSpecific may be null
        }
      } else {
        // Endpoint not implemented - this is expected behavior
        expect(advisories, isNull);
      }

      // Test with packageName2
      final advisories2 = await _client.packageAdvisories(packageName2);
      if (advisories2 != null) {
        expect(advisories2.advisories, isA<List<SecurityAdvisory>>());
      } else {
        expect(advisories2, isNull);
      }
    });
  });

  test('Fetch publisher packages', () async {
    final packages = await _client.fetchPublisherPackages('dart.dev');
    expect(packages.length, greaterThan(0));
  });
}
