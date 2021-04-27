import 'package:http/http.dart' as http;

// import 'package:oauth2/oauth2.dart';

import '../version.dart';

class PubApiHttpClient extends http.BaseClient {
  final http.Client _inner;
  // final Credentials? credentials;
  PubApiHttpClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] = 'package:pub_client/$packageVersion';
    // if (credentials != null) {
    //   request.headers['authorization'] = 'Bearer ${credentials!.idToken}';
    // }
    return _inner.send(request);
  }
}
