import 'package:pub_api_client/src/console_helper/console_helper.dart';
import 'package:test/test.dart';

const packageName = 'fvm';

void main() {
  group('Console Helper', () {
    test('Check Update Printer', () async {
      await expectLater(
        () async => checkUpdatePrinter(packageName),
        prints(''),
      );

      await expectLater(
        () async => checkUpdatePrinter(packageName, currentVersion: '1.0.0'),
        prints(
          r'''
Update Available for fvm: 1.0.0 → 1.3.4
Changelog: https://pub.dev/packages/fvm/changelog
''',
        ),
      );
    });
  });
}
