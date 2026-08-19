import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('Request headers', () {
    test('sends the pub v2 Accept header by default', () async {
      Map<String, String>? captured;
      final client = PubClient(
        client: MockClient((request) async {
          captured = request.headers;
          return http.Response(
            jsonEncode({'packages': <String>[]}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      await client.packageNameCompletion();

      expect(captured?['accept'], 'application/vnd.pub.v2+json');
    });

    test('topic completion replaces the Accept header instead of adding '
        'a second one', () async {
      // pub.dev answers 406 for `application/vnd.pub.v2+json` on this
      // endpoint, so the override has to replace it, not append to it.
      Map<String, String>? captured;
      final client = PubClient(
        client: MockClient((request) async {
          captured = request.headers;
          return http.Response(
            jsonEncode({'flutter': 1}),
            200,
            headers: {'content-type': 'application/json'},
          );
        }),
      );

      await client.topicNameCompletion();

      expect(captured?['accept'], 'application/json');
      expect(
        captured!.keys.where((key) => key.toLowerCase() == 'accept'),
        hasLength(1),
      );
      // The default headers survive the override.
      expect(captured?['user-agent'], startsWith('pub_api_client/'));
    });
  });
}
