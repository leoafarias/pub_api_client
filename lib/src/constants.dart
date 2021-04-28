import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';

import '../pub_api_client.dart';

final kEnvVars = Platform.environment;

/// User Home Path
String get kUserHome {
  if (Platform.isWindows) {
    return kEnvVars['UserProfile']!;
  } else {
    return kEnvVars['HOME']!;
  }
}

/// Directory for .pub-cache
Directory get pubCacheDir => Directory(
      join(kUserHome, '.pub-cache'),
    );

/// Credentials json
File get credentialsFile => File(
      join(pubCacheDir.path, 'credentials.json'),
    );

/// The pub client's OAuth2 secret.
///
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

Credentials? get pubCredentials {
  final credEnv = _env['PUB_CREDENTIALS'];
  // Get credentials from Env var if it exists

  if (credEnv != null) {
    return Credentials.fromJson(jsonEncode(jsonDecode(credEnv)));
  }

  // If not try to get from credentials file
  if (!credentialsFile.existsSync()) {
    return null;
  }
  final json = credentialsFile.readAsStringSync();
  return Credentials.fromJson(json);
}
