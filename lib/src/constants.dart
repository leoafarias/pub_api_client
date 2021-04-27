import 'dart:io';

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

/// Directory for .pub-cache
Directory get pubCacheDir => Directory(
      join(kUserHome, '.pub-cache'),
    );

/// Credentials json
File get credentialsFile => File(
      join(pubCacheDir.path, 'credentials.json'),
    );
