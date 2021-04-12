import 'dart:io';

import 'package:pub_api_client/src/helpers/google_packages.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pubspec/pubspec.dart';
import 'package:test/test.dart';

const packageName = 'fvm';

// final printLog = [];

// dynamic Function() overridePrint(dynamic Function() testFn) => () {
//       final spec = ZoneSpecification(
//         print: (_, __, ___, String msg) {
//           // Add to log instead of printing to stdout
//           printLog.add(msg);
//         },
//       );
//       return Zone.current.fork(specification: spec).run(testFn);
//     };
void main() {
  group('Helpers', () {
    test('Get all Google packages', () async {
      final latestGoogleDeps = await buildGooglePackages();
      final staticGoogleDeps = await getGooglePackages();

      expect(latestGoogleDeps.length, staticGoogleDeps.length);
    });

    test('Does Package version match', () async {
      final pubspec = PubSpec.fromYamlString(File(
        '${Directory.current.path}/pubspec.yaml',
      ).readAsStringSync());
      expect(pubspec.version.toString(), packageVersion);
    });
  });
}
