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

// ignore: avoid_classes_with_only_static_members
/// Tags used for filtering package searches
class PackageTag {
  /// Filter by publisher
  static String publisher(String publisher) => 'publisher:$publisher';

  /// Filter by dependency
  static String dependency(String dependency) => 'dependency:$dependency';

  /// Filter packages that are something
  static String isTag(String isTag) => 'is:$isTag';

  /// Filter packages by supported platform
  static String platform(String platform) => 'platform:$platform';

  /// Filter packages by sdk
  static String sdk(String sdk) => 'sdk:$sdk';

  /// Filter packages by license
  static String license(String license) => 'license:$license';

  /// Show packages that are something
  static String show(String show) => 'show:$show';

  /// Filter packages that have something
  static String has(String has) => 'has:$has';

  /// Supports android platform
  static String platformAndroid = platform('android');

  /// Supports ios platform
  static String platformIos = platform('ios');

  /// Supports linux platform
  static String platformLinux = platform('linux');

  /// Supports macos platform
  static String platformMacos = platform('macos');

  /// Supports web platform
  static String platformWeb = platform('web');

  /// Supports windows platform
  static String platformWindows = platform('windows');

  /// Uses dart sdk
  static String sdkDart = sdk('dart');

  /// Uses flutter sdk
  static String sdkFlutter = sdk('flutter');

  /// Uses an OSI approved license
  static String licenseOsiApproved = license('osi-approved');

  /// Is a flutter favorite
  static String isFlutterFavorite = isTag('flutter-favorite');

  /// Show unlisted packages
  static String showUnlisted = show('unlisted');

  /// Is null-safe
  static String isNullSafe = isTag('null-safe');

  /// Has screenshots
  static String hasScreenshot = has('screenshot');

  /// Is Dart 3 ready
  static String isDart3Ready = isTag('dart3-ready');
}
