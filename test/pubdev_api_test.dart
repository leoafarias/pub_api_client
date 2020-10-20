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
      final packageInfo = await client.getPackage(packageName);

      final lastPubspec = packageInfo.latestPubspec;
      expect(packageInfo.version, lastPubspec.version.toString());
      expect(packageInfo.description, lastPubspec.description);
      expect(packageInfo.url, 'https://pub.dev/packages/$packageName');
      expect(packageInfo.name, packageName);
    });

    test('Get package versions', () async {
      final packageInfo = await client.getPackage(packageName);
      final payload = await client.getVersions(packageName);

      expect(payload.length, greaterThan(0));
      expect(payload.length, packageInfo.versions.length);
    });

    test('Search for packages', () async {
      final payload = await client.search('json');
      final nextPagePayload = await payload.nextResults();
      expect(payload.packages.length, greaterThan(1));
      expect(nextPagePayload.packages.length, greaterThan(1));
    });

    test('Get Package Score', () async {
      final payload = await client.getScore(packageName);

      expect(payload.lastUpdated, isNotNull);
      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, 110);
    });

    test('Check package update', () async {
      final packageInfo = await client.getPackage(packageName);
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
