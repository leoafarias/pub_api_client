import 'package:http/http.dart' as http;

import '../version.dart';

class PubApiHttpClient extends http.BaseClient {
  final http.Client _inner;
  final String? userAgent;
  // final Credentials? credentials;
  PubApiHttpClient(this._inner, {this.userAgent = 'default'});

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] =
        'pub_api_client/$packageVersion ($userAgent)';

    return _inner.send(request);
  }
}
