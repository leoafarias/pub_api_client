import 'package:http/http.dart' as http;
import '../version.dart';

class PubApiHttpClient extends http.BaseClient {
  final http.Client _inner;

  PubApiHttpClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] = 'package:pub_client/$packageVersion';
    return _inner.send(request);
  }
}
