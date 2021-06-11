import 'dart:io';

import 'package:path/path.dart';

import '../pub_api_client.dart';

final kEnvVars = Platform.environment;

/// Directory for .pub-cache
Directory pubCacheDir = _pubCacheDir();

Directory _pubCacheDir() {
  if (Platform.environment.containsKey('PUB_CACHE')) {
    return Directory(Platform.environment['PUB_CACHE']!);
  } else if (Platform.isWindows) {
    /// Taken from system_cache.dart on pub
    final appData = Platform.environment['APPDATA'];
    final appDataCacheDir = Directory(join(appData!, 'Pub', 'Cache'));
    if (appDataCacheDir.existsSync()) {
      return appDataCacheDir;
    }
    final localAppData = Platform.environment['APPDATA'];
    return Directory(join(localAppData!, 'Pub', 'Cache'));
  } else {
    return Directory('${Platform.environment['HOME']}/.pub-cache');
  }
}

/// Credentials json
File get credentialsFile => File(
      join(pubCacheDir.path, 'credentials.json'),
    );

/// The pub client's OAuth2 secret.
/// This isn't actually meant to be kept a secret.
/// https://github.com/dart-lang/pub/blob/master/lib/src/oauth2.dart
class PubAuth {
  const PubAuth._();
  static String identifier =
      '818368855108-8grd2eg9tj9f38os6f1urbcvsq399u8n.apps.'
      'googleusercontent.com';
  static String secret = 'SWeqj8seoJW0w7_CpEPFLX0K';
}

final _env = Platform.environment;

Credentials? pubCredentials = _pubCredentials();

Credentials? _pubCredentials() {
  final credEnv = _env['PUB_CREDENTIALS'];
  // Get credentials from Env var if it exists
  if (credEnv != null) {
    return Credentials.fromJson(credEnv);
  }

  // If not try to get from credentials file
  if (!credentialsFile.existsSync()) {
    return null;
  }
  final json = credentialsFile.readAsStringSync();
  return Credentials.fromJson(json);
}
