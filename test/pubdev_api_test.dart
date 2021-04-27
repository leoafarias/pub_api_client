import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_api_client/src/constants.dart';
import 'package:test/test.dart';

const packageName = 'fvm';
final client = PubClient();

final authedClient = PubClient(
  credentials: pubCredentials,
);
void main() {
  group('PubDev Client', () {
    test('Can Fetch package info', () async {
      final packageInfo = await client.packageInfo(packageName);

      final lastPubspec = packageInfo.latestPubspec;
      expect(packageInfo.version, lastPubspec.version.toString());
      expect(packageInfo.description, lastPubspec.description);
      expect(packageInfo.url, 'https://pub.dev/packages/$packageName');
      expect(packageInfo.name, packageName);
    });

    test('Get package versions', () async {
      final packageInfo = await client.packageInfo(packageName);
      final payload = await client.packageVersions(packageName);

      expect(payload.length, greaterThan(0));
      expect(payload.length, packageInfo.versions.length);
    });
    test('Get package metrics', () async {
      final score = await client.packageScore(packageName);
      final metrics = await client.packageMetrics(packageName);

      expect(metrics.score, score);
      expect(metrics.scorecard.packageName, 'fvm');
      expect(metrics.scorecard.maxPubPoints, 110);
    });

    test('Get package version info', () async {
      final package = await client.packageInfo(packageName);
      final version =
          await client.packageVersionInfo(packageName, package.version);

      expect(package.latest.archiveUrl, version.archiveUrl);
      expect(package.version, version.version);
    });
    test('Get package options', () async {
      final options = await client.packageOptions(packageName);

      expect(options.isUnlisted, false);
      expect(options.isDiscontinued, false);
      expect(options.replacedBy, null);
    });

    test('Get package publisher', () async {
      final publisher = await client.packagePublisher(packageName);
      expect(publisher.publisherId, 'fvm.app');
    });
    test('Get Package Score', () async {
      final payload = await client.packageScore(packageName);

      expect(payload.lastUpdated, isNotNull);
      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, 110);
    });

    test('Search for packages', () async {
      final payload = await client.search('json');
      final nextPagePayload = await client.nextPage(payload.next ?? '');
      expect(payload.packages.length, greaterThan(1));
      expect(nextPagePayload.packages.length, greaterThan(1));
    });

    test('Search for packages of a publisher', () async {
      final payload = await client.search('', publisher: 'fvm.app');
      final nextPagePayload =
          await client.search('', dependency: 'pub_api_client');
      expect(payload.packages.length, equals(2));
      expect(nextPagePayload.packages.length, greaterThan(0));
    });

    test('Get documentation', () async {
      final packageInfo = await client.packageInfo(packageName);
      final documentation = await client.documentation(packageName);
      expect(documentation.latestStableVersion, packageInfo.version);
      expect(documentation.versions.length, packageInfo.versions.length);
    });

    test('Get package names', () async {
      final packages = await client.packageNameCompletion();
      expect(packages.length, greaterThan(20000));
    });

    test('Can like and unlike packages', () async {
      await authedClient.unlikePackage('fvm');

      final unlikeRes = await authedClient.isPackageLiked('fvm');
      final likeRes = await authedClient.likePackage('fvm');

      expect(unlikeRes.liked, false);
      expect(likeRes.liked, true);
    });

    test('View liked packages', () async {
      // Can make an authenticated request
      final likedPackages = await authedClient.listPackageLikes();

      expect(likedPackages, isNotNull);
      expect(likedPackages.length, greaterThan(1));
    });
  });
}
