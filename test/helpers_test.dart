import 'dart:async';

import 'package:pub_api_client/pub_api_client.dart';
import 'package:pub_api_client/src/helpers/console_helper.dart';
import 'package:pub_api_client/src/helpers/google_packages.dart';

import 'package:test/test.dart';

final packageName = 'fvm';

final printLog = [];

// Future<bool> _testGooglePackges(List<String> packages) async {
//   final client = PubClient();
//   final futures = <Future<PubPackage>>[];
//   for (var package in packages) {
//     futures.add(client.packageInfo(package));
//   }

//   final results = await Future.wait(futures);
// }

dynamic overridePrint(Function testFn) => () {
      final spec = ZoneSpecification(
        print: (_, __, ___, String msg) {
          // Add to log instead of printing to stdout
          printLog.add(msg);
        },
      );
      return Zone.current.fork(specification: spec).run(testFn);
    };
void main() {
  group('Console Helper', () {
    test('Check Update Printer', overridePrint(() async {
      await checkUpdatePrinter(packageName);
      expect(printLog.isEmpty, true);
      await checkUpdatePrinter(packageName, currentVersion: '1.0.0');
      expect(printLog.length, 2);
    }));

    test('Get all Google packages', () async {
      final googleDeps = await getGooglePackages();
      // TODO: Better test for this [40] is a random number
      expect(googleDeps.length, greaterThan(100));
    });
  });
}
