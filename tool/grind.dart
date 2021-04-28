import 'dart:cli';
import 'dart:convert';
import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:pub_api_client/pub_api_client.dart';

void main(List<String> args) => grind(args);

@DefaultTask()
void build() {
  // final args = context.invocation.arguments;
  final packages = waitFor(buildGooglePackages())..sort();

  joinFile(
    Directory.current,
    ['static', 'google_deps.json'],
  ).writeAsStringSync(
    jsonEncode({
      'packages': packages,
    }),
  );
}

@Task()
void buildFavorites() {
  // final args = context.invocation.arguments;
  final packages = waitFor(buildFlutterFavorites());

  joinFile(
    Directory.current,
    ['static', 'flutter_favorites.json'],
  ).writeAsStringSync(
    jsonEncode({
      'packages': packages,
    }),
  );
}

@Task()
void clean() => defaultClean();
