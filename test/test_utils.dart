import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';

final kEnvVars = Platform.environment;

/// User Home Path
String get kUserHome {
  if (Platform.isWindows) {
    return kEnvVars['UserProfile']!;
  } else {
    return kEnvVars['HOME']!;
  }
}

class LocalJsonClient extends http.BaseClient {
  final String baseDir;
  final bool storeJsonResponses;
  final http.Client _innerClient;

  bool _hasLoaded = false;

  static final _CachedResponse _cachedResponses = {};

  LocalJsonClient(
    this.baseDir,
    this.storeJsonResponses, [
    http.Client? innerClient,
  ]) : _innerClient = innerClient ?? http.Client();

  late final _responseFile = File(join(baseDir, 'cached_response.json'));

  void _saveCacheResponse() {
    _responseFile.writeAsStringSync(_cachedResponses.toJson());
  }

  Future<void> _loadCachedResponses() async {
    if (_hasLoaded) return;
    _hasLoaded = true;

    _cachedResponses.clear();

    if (!await _responseFile.exists()) {
      await _responseFile.create(recursive: true);
      await _responseFile.writeAsString(jsonEncode({}));
    }
    final json = await _responseFile.readAsString();

    final data = jsonDecode(json) as Map<String, dynamic>;

    for (final entry in data.entries) {
      final key = entry.key;
      final value = entry.value as Map<String, dynamic>;
      _cachedResponses[key] = value;
    }

    print('Loaded ${_cachedResponses.length} cached responses');
    return;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    await _loadCachedResponses();

    if (storeJsonResponses) {
      final response = await _innerClient.send(request);

      final result = await response.stream.bytesToString();

      _cachedResponses[request.url.toString()] = jsonDecode(result);

      _saveCacheResponse();
    }

    final payload = _cachedResponses[request.url.toString()]!;

    final response = http.Response(
      jsonEncode(payload),
      headers: {
        "content-type": "application/json; charset=\"utf-8\"",
      },
      200,
    );

    return http.StreamedResponse(
      request: request,
      Stream.value(response.bodyBytes),
      response.statusCode,
    );
  }
}

typedef _CachedResponse = Map<String, JSON>;

typedef JSON = Map<String, dynamic>;

extension on _CachedResponse {
  String toJson() {
    final Map<String, JSON> json = {};
    for (final entry in entries) {
      json[entry.key] = entry.value;
    }

    return _prettyJson(json);
  }
}

String _prettyJson(Map<String, dynamic> json) {
  const encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(json);
}

/// HTTP Client wrapper that adds delays between requests to avoid rate limiting
/// This is only used in tests
class RateLimitedClient extends http.BaseClient {
  final http.Client _innerClient;
  DateTime? _lastRequestTime;
  final Duration _minDelay;

  RateLimitedClient({
    http.Client? innerClient,
    Duration minDelay = const Duration(milliseconds: 500),
  })  : _innerClient = innerClient ?? http.Client(),
        _minDelay = minDelay;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Add delay if needed to avoid rate limiting
    if (_lastRequestTime != null) {
      final timeSinceLastRequest = DateTime.now().difference(_lastRequestTime!);
      if (timeSinceLastRequest < _minDelay) {
        await Future.delayed(_minDelay - timeSinceLastRequest);
      }
    }
    _lastRequestTime = DateTime.now();

    return _innerClient.send(request);
  }

  @override
  void close() {
    _innerClient.close();
    super.close();
  }
}
