import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class PubClientException implements Exception {
  final Response _response;

  PubClientException(this._response);

  @override
  String toString() {
    final data = jsonDecode(_response.body);
    final message = data?['error']?['message'];

    return '${_response.reasonPhrase}: $message';
  }
}

class BadRequestException extends PubClientException {
  BadRequestException(Response response) : super(response);
}

class UnauthorizedException extends PubClientException {
  UnauthorizedException(Response response) : super(response);
}

class ForbiddenException extends PubClientException {
  ForbiddenException(Response response) : super(response);
}

class NotFoundException extends PubClientException {
  NotFoundException(Response response) : super(response);
}

class InternalServerError extends PubClientException {
  InternalServerError(Response response) : super(response);
}

class UnknownException extends PubClientException {
  UnknownException(Response response) : super(response);
}

/// If `status` code is an exception it will throw a [PubClientException]
void responseValidOrThrow(Response res) {
  final status = res.statusCode;
  // Sucessful request
  if (status >= 200 && status < 400) {
    return;
  }
  switch (status) {
    case HttpStatus.forbidden:
      throw ForbiddenException(res);
    case HttpStatus.notFound:
      throw NotFoundException(res);
    case HttpStatus.unauthorized:
      throw UnauthorizedException(res);
    case HttpStatus.badRequest:
      throw BadRequestException(res);
    case HttpStatus.internalServerError:
      throw InternalServerError(res);
    default:
      throw UnknownException(res);
  }
}
