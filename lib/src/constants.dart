import 'dart:io';

import 'package:path/path.dart';

import '../pub_api_client.dart';

final kEnvVars = Platform.environment;

/// Credentials json
File get credentialsFile => File(
      join(dartConfigHome(), 'pub-credentials.json'),
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

String dartConfigHome() => join(_configHome, 'dart');

String get _configHome {
  if (Platform.isWindows) {
    final appdata = Platform.environment['APPDATA'];
    if (appdata == null) {
      throw EnvironmentNotFoundException(
        'Environment variable %APPDATA% is not defined!',
      );
    }
    return appdata;
  }

  if (Platform.isMacOS) {
    return join(_home, 'Library', 'Application Support');
  }

  if (Platform.isLinux) {
    final xdgConfigHome = Platform.environment['XDG_CONFIG_HOME'];
    if (xdgConfigHome != null) {
      return xdgConfigHome;
    }
    // XDG Base Directory Specification says to use $HOME/.config/ when
    // $XDG_CONFIG_HOME isn't defined.
    return join(_home, '.config');
  }

  // We have no guidelines, perhaps we should just do: $HOME/.config/
  // same as XDG specification would specify as fallback.
  return join(_home, '.config');
}

String get _home {
  final home = Platform.environment['HOME'];
  if (home == null) {
    throw EnvironmentNotFoundException(
        'Environment variable \$HOME is not defined!');
  }
  return home;
}

class EnvironmentNotFoundException implements Exception {
  final String message;
  EnvironmentNotFoundException(this.message);
  @override
  String toString() => message;
}
