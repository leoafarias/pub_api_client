import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

/// Integration test for security advisories using packages known to have advisories
void main() {
  final client = PubClient(
    debug: true,
    client: RateLimitedClient(),
  );

  group('Security Advisories Integration', () {
    test('Parse real advisories from http package', () async {
      final advisories = await client.packageAdvisories('http');

      // The http package has known security advisories
      if (advisories != null) {
        expect(advisories.advisoriesUpdated, isNotNull);
        expect(advisories.advisories, isNotEmpty);

        final firstAdvisory = advisories.advisories.first;
        expect(firstAdvisory.id, isNotNull);
        expect(firstAdvisory.summary, isNotNull);
        expect(firstAdvisory.details, isNotNull);

        // Test pubDisplayUrl convenience getter
        expect(firstAdvisory.pubDisplayUrl, isNotNull);
        expect(firstAdvisory.pubDisplayUrl, contains('github.com/advisories/'));

        print('\nFound ${advisories.advisories.length} advisory(ies) for http package');
        print('Advisory ID: ${firstAdvisory.id}');
        print('Summary: ${firstAdvisory.summary}');
        print('URL: ${firstAdvisory.pubDisplayUrl}');
      } else {
        fail('Expected http package to have advisories but got null');
      }
    });

    test('Parse real advisories from dio package', () async {
      final advisories = await client.packageAdvisories('dio');

      if (advisories != null) {
        expect(advisories.advisoriesUpdated, isNotNull);
        expect(advisories.advisories, isNotEmpty);

        print('\nFound ${advisories.advisories.length} advisory(ies) for dio package');
        for (final advisory in advisories.advisories) {
          print('- ${advisory.id}: ${advisory.summary}');
        }
      } else {
        fail('Expected dio package to have advisories but got null');
      }
    });

    test('Handle package with no advisories (flutter)', () async {
      final advisories = await client.packageAdvisories('flutter');

      if (advisories != null) {
        // Should have empty array and null advisoriesUpdated
        expect(advisories.advisories, isEmpty);
        print('\nflutter package has no advisories (as expected)');
      }
    });
  });
}
