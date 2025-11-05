import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:test/test.dart';

const _repositoryUrl = 'https://github.com/leoafarias/pub_api_client';

void main() {
  group('User-Agent header', () {
    test('includes GitHub URL by default', () async {
      String? capturedHeader;
      final client = PubClient(
        client: MockClient((request) async {
          capturedHeader = request.headers['user-agent'];
          return http.Response(
            jsonEncode({'packages': <String>[]}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      await client.packageNameCompletion();

      expect(
        capturedHeader,
        'pub_api_client/$packageVersion (default; +$_repositoryUrl)',
      );
    });

    test('preserves custom user agent metadata', () async {
      String? capturedHeader;
      const customMetadata = 'my_app/1.0';

      final client = PubClient(
        userAgent: customMetadata,
        client: MockClient((request) async {
          capturedHeader = request.headers['user-agent'];
          return http.Response(
            jsonEncode({'packages': <String>[]}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      await client.packageNameCompletion();

      expect(
        capturedHeader,
        'pub_api_client/$packageVersion ($customMetadata; +$_repositoryUrl)',
      );
    });

    test('falls back to default when metadata blank', () async {
      String? capturedHeader;

      final client = PubClient(
        userAgent: '   ',
        client: MockClient((request) async {
          capturedHeader = request.headers['user-agent'];
          return http.Response(
            jsonEncode({'packages': <String>[]}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      await client.packageNameCompletion();

      expect(
        capturedHeader,
        'pub_api_client/$packageVersion (default; +$_repositoryUrl)',
      );
    });
  });
}
