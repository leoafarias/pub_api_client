import 'dart:io';

import 'package:oauth2/oauth2.dart';
import 'package:pub_api_client/src/constants.dart';

final kEnvVars = Platform.environment;

/// User Home Path
String get kUserHome {
  if (Platform.isWindows) {
    return kEnvVars['UserProfile']!;
  } else {
    return kEnvVars['HOME']!;
  }
}

Credentials? getPubCredentials() {
  if (!credentialsFile.existsSync()) {
    return null;
  }
  final json = credentialsFile.readAsStringSync();
  return Credentials.fromJson(json);
}
