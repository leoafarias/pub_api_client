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
  });
}
