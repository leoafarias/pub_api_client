import 'dart:async';
import 'dart:io';

import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_api_client/src/helpers/console_helper.dart';
import 'package:pub_api_client/src/helpers/google_packages.dart';
import 'package:pub_api_client/src/helpers/google_packages_list.dart';
import 'package:pub_api_client/src/version.dart';
import 'package:pubspec_yaml/pubspec_yaml.dart';

import 'package:test/test.dart';

const packageName = 'fvm';

final printLog = [];

// Future<bool> _testGooglePackges(List<String> packages) async {
//   final client = PubClient();
//   final futures = <Future<PubPackage>>[];
//   for (var package in packages) {
//     futures.add(client.packageInfo(package));
//   }

//   final results = await Future.wait(futures);
// }

dynamic Function() overridePrint(dynamic Function() testFn) => () {
      final spec = ZoneSpecification(
        print: (_, __, ___, String msg) {
          // Add to log instead of printing to stdout
          printLog.add(msg);
        },
      );
      return Zone.current.fork(specification: spec).run(testFn);
    };
void main() {
  group('Helpers', () {
    test('Check Update Printer', overridePrint(() async {
      await checkUpdatePrinter(packageName);
      expect(printLog.isEmpty, true);
      await checkUpdatePrinter(packageName, currentVersion: '1.0.0');
      expect(printLog.length, 2);
    }));

    test('Get all Google packages', () async {
      final googleDeps = await getGooglePackages();
      // print(googleDeps);
      expect(googleDeps.length, googlePackagesList.length);
    });

    test('Does Package version match', () async {
      final pubspec = File(
        '${Directory.current.path}/pubspec.yaml',
      ).readAsStringSync().toPubspecYaml();
      expect(pubspec.version.valueOr(() => null), packageVersion);
    });
  });
}
