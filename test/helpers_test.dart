import 'dart:io';

import 'package:pub_api_client/src/pub_api_client_base.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pubspec/pubspec.dart';
import 'package:test/test.dart';

const packageName = 'fvm';

void main() {
  group('Helpers', () {
    test('Get all Google packages', () async {
      final latestGoogleDeps = await PubClient().fetchGooglePackages();

      expect(latestGoogleDeps.length, greaterThan(230));
    });

    test('Does Package version match', () async {
      final pubspec = PubSpec.fromYamlString(File(
        '${Directory.current.path}/pubspec.yaml',
      ).readAsStringSync());
      expect(pubspec.version.toString(), packageVersion);
    });
  });
}
