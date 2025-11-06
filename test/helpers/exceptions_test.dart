import 'package:http/http.dart';
import 'package:pub_api_client/src/helpers/exceptions.dart';
import 'package:test/test.dart';

void main() {
  group('PubClientException', () {
    test('toString returns correct message when JSON is valid', () {
      final response = Response('{"error":{"message":"Test error"}}', 400,
          reasonPhrase: 'Bad Request');
      final exception = PubClientException(response);
      expect(exception.toString(), 'Bad Request: Test error');
    });

    test('toString returns only reason phrase when JSON is invalid', () {
      final response =
          Response('Invalid JSON', 400, reasonPhrase: 'Bad Request');
      final exception = PubClientException(response);
      expect(exception.toString(), 'Bad Request');
    });

    test('toString appends server message when provided', () {
      final response =
          Response('Invalid JSON', 401, reasonPhrase: 'Unauthorized');
      final exception =
          UnauthorizedException(response, serverMessage: 'Auth failed.');
      expect(
        exception.toString(),
        'Unauthorized\nServer: Auth failed.',
      );
    });
  });

  group('responseValidOrThrow', () {
    test('does not throw for successful status codes', () {
      final response = Response('', 200);
      expect(() => responseValidOrThrow(response), returnsNormally);
    });

    test('throws ForbiddenException for 403 status code', () {
      final response = Response('', 403);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<ForbiddenException>()));
    });

    test('throws NotFoundException for 404 status code', () {
      final response = Response('', 404);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<NotFoundException>()));
    });

    test('throws UnauthorizedException for 401 status code', () {
      final response = Response('', 401);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<UnauthorizedException>()));
    });

    test('throws BadRequestException for 400 status code', () {
      final response = Response('', 400);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<BadRequestException>()));
    });

    test('throws InternalServerError for 500 status code', () {
      final response = Response('', 500);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<InternalServerError>()));
    });

    test('throws UnknownException for unhandled status codes', () {
      final response = Response('', 418);
      expect(() => responseValidOrThrow(response),
          throwsA(isA<UnknownException>()));
    });

    test('attaches server message for unauthorized responses', () {
      final response = Response(
        '',
        401,
        reasonPhrase: 'Unauthorized',
        headers: {
          'www-authenticate':
              'Bearer realm="pub", message="Authentication failed."',
        },
      );
      expect(
        () => responseValidOrThrow(response),
        throwsA(
          isA<UnauthorizedException>().having((e) => e.serverMessage,
              'serverMessage', 'Authentication failed.'),
        ),
      );
    });

    test('attaches server message for forbidden responses', () {
      final response = Response(
        '',
        403,
        reasonPhrase: 'Forbidden',
        headers: {
          'WWW-Authenticate':
              'Bearer realm="pub", message="Insufficient permissions."',
        },
      );
      expect(
        () => responseValidOrThrow(response),
        throwsA(
          isA<ForbiddenException>().having((e) => e.serverMessage,
              'serverMessage', 'Insufficient permissions.'),
        ),
      );
    });

    test('gracefully handles missing WWW-Authenticate header', () {
      final response = Response('', 401, reasonPhrase: 'Unauthorized');
      expect(
        () => responseValidOrThrow(response),
        throwsA(
          isA<UnauthorizedException>()
              .having((e) => e.serverMessage, 'serverMessage', isNull),
        ),
      );
    });
  });
}
