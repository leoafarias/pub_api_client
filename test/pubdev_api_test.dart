import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

final packageName = 'fvm';
void main() {
  group('PubDev Client', () {
    PubClient client;

    setUp(() {
      client = PubClient();
    });

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
      final nextPagePayload = await payload.nextResults();
      expect(payload.packages.length, greaterThan(1));
      expect(nextPagePayload.packages.length, greaterThan(1));
    });

    test('Get documentation', () async {
      final packageInfo = await client.packageInfo(packageName);
      final documentation = await client.documentation(packageName);
      expect(documentation.latestStableVersion, packageInfo.version);
      expect(documentation.versions.length, packageInfo.versions.length);
    });

    test('Check package update', () async {
      final packageInfo = await client.packageInfo(packageName);
      final latestWithoutCurrent = await client.checkLatest(packageName);

      expect(latestWithoutCurrent.needUpdate, false);
      expect(latestWithoutCurrent.latestVersion, packageInfo.version);
      expect(
        latestWithoutCurrent.latestVersion,
        packageInfo.versions.last.version,
      );
      expect(latestWithoutCurrent.packageInfo.name, packageName);

      final latestNeedUpdate =
          await client.checkLatest(packageName, currentVersion: '1.0.0');

      expect(latestNeedUpdate.needUpdate, true);

      final latestCurrent = await client.checkLatest(packageName,
          currentVersion: packageInfo.version);

      expect(latestCurrent.needUpdate, false);
    });
  });
}
