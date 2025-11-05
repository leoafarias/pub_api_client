import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

final _wwwAuthenticateMessagePattern = RegExp(r'message=\"([^\"]*)\"');

class PubClientException implements Exception {
  final Response _response;
  final String? serverMessage;

  PubClientException(this._response, {this.serverMessage});

  String _withServerMessage(String message) {
    if (serverMessage == null || serverMessage!.isEmpty) {
      return message;
    }
    return '$message\nServer: $serverMessage';
  }

  @override
  String toString() {
    try {
      final data = jsonDecode(_response.body);
      final message = data?['error']?['message'];
      return _withServerMessage('${_response.reasonPhrase}: $message');
    } catch (e) {
      return _withServerMessage('${_response.reasonPhrase}');
    }
  }
}

class BadRequestException extends PubClientException {
  BadRequestException(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

class UnauthorizedException extends PubClientException {
  UnauthorizedException(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

class ForbiddenException extends PubClientException {
  ForbiddenException(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

class NotFoundException extends PubClientException {
  NotFoundException(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

class InternalServerError extends PubClientException {
  InternalServerError(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

class UnknownException extends PubClientException {
  UnknownException(Response response, {String? serverMessage})
      : super(response, serverMessage: serverMessage);
}

String? _parseWwwAuthenticateMessage(String? headerValue) {
  if (headerValue == null || headerValue.isEmpty) {
    return null;
  }
  final match = _wwwAuthenticateMessagePattern.firstMatch(headerValue);
  return match?.group(1);
}

/// If `status` code is an exception it will throw a [PubClientException]
void responseValidOrThrow(Response res) {
  final status = res.statusCode;
  // Sucessful request
  if (status >= 200 && status < 400) {
    return;
  }
  final authMessage = _parseWwwAuthenticateMessage(
    res.headers['www-authenticate'] ?? res.headers['WWW-Authenticate'],
  );
  switch (status) {
    case HttpStatus.forbidden:
      throw ForbiddenException(res, serverMessage: authMessage);
    case HttpStatus.notFound:
      throw NotFoundException(res, serverMessage: authMessage);
    case HttpStatus.unauthorized:
      throw UnauthorizedException(res, serverMessage: authMessage);
    case HttpStatus.badRequest:
      throw BadRequestException(res, serverMessage: authMessage);
    case HttpStatus.internalServerError:
      throw InternalServerError(res, serverMessage: authMessage);
    default:
      throw UnknownException(res, serverMessage: authMessage);
  }
}
