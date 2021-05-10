import 'dart:io';

final kEnvVars = Platform.environment;

const maxPoints = 130;

/// User Home Path
String get kUserHome {
  if (Platform.isWindows) {
    return kEnvVars['UserProfile']!;
  } else {
    return kEnvVars['HOME']!;
  }
}
