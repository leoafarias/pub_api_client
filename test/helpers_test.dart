import 'dart:io';

import 'package:pub_api_client/src/pub_api_client_base.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

const packageName = 'fvm';

void main() {
  group('Helpers', () {
    test(
      'Get all Google packages',
      () async {
        final client = PubClient(client: LocalJsonClient('./test/fixtures', false));

        try {
          final latestGoogleDeps = await client.fetchGooglePackages();
          expect(latestGoogleDeps.length, greaterThan(230));
        } on Exception catch (e) {
          // Skip test if rate limited
          if (e.toString().contains('Too Many Requests')) {
            markTestSkipped('Skipped due to API rate limiting');
            return;
          }
          rethrow;
        }
      },
      timeout: Timeout(Duration(seconds: 30)),
    );

    test('Does Package version match', () async {
      final pubspec = Pubspec.parse(File(
        '${Directory.current.path}/pubspec.yaml',
      ).readAsStringSync());
      expect(pubspec.version.toString(), packageVersion);
    });
  });
}
