import 'dart:async';

import 'package:pub_api_client/src/console_helper/console_helper.dart';
import 'package:test/test.dart';

final packageName = 'fvm';

var printLog = [];

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
  });
}
