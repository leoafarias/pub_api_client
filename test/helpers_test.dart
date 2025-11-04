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
        final client = PubClient(client: RateLimitedClient(
          minDelay: const Duration(milliseconds: 800),
        ));
        final latestGoogleDeps = await client.fetchGooglePackages();

        expect(latestGoogleDeps.length, greaterThan(230));
        client.close();
      },
      skip: 'Too aggressive for CI - fetches from 6 publishers in parallel '
          'causing rate limiting. Method is documented as internal tool. '
          'Same logic tested in "Fetch publisher packages" test.',
    );

    test('Does Package version match', () async {
      final pubspec = Pubspec.parse(File(
        '${Directory.current.path}/pubspec.yaml',
      ).readAsStringSync());
      expect(pubspec.version.toString(), packageVersion);
    });
  });
}
