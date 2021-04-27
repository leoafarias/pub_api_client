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

Future<Credentials?> getPubCredentials() async {
  if (!await credentialsFile.exists()) {
    return null;
  }
  final json = await credentialsFile.readAsString();
  return Credentials.fromJson(json);
}
