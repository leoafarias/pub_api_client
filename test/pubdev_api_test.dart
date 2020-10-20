import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('PubDev Client', () {
    PubClient client;

    setUp(() {
      client = PubClient();
    });

    test('Can Fetch package info', () async {
      final packageName = 'fvm';
      final packageInfo = await client.getPackage(packageName);

      final lastPubspec = packageInfo.latest.pubspec;
      expect(packageInfo.version, lastPubspec.version);
      expect(packageInfo.description, lastPubspec.description);
      expect(packageInfo.url, 'https://pub.dev/packages/$packageName');
      expect(packageInfo.name, packageName);
    });

    test('Get package versions', () async {
      final packageName = 'fvm';
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
      final payload = await client.getScore('fvm');

      expect(payload.lastUpdated, isNotNull);
      expect(payload.grantedPoints, isNotNull);
      expect(payload.likeCount, greaterThan(50));
      expect(payload.maxPoints, 110);
    });
  });
}
