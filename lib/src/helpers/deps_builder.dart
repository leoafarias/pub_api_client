import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:pub_api_client/src/helpers/google_packages.dart';

Builder googleDepsBuilder([BuilderOptions? options]) => _DepsBuilder();

class _DepsBuilder implements Builder {
  @override
  Future build(BuildStep buildStep) async {
    final googleDeps = await getGooglePackages();
    final deps = jsonEncode(googleDeps);
    await buildStep.writeAsString(
        AssetId(buildStep.inputId.package,
            'lib/src/helpers/google_packages_list.dart'),
        '''
// Generated code. Do not modify.
const googlePackagesList = $googleDeps ;
''');
  }

  @override
  final buildExtensions = const {
    r'$lib$': ['src/helpers/google_packages_list.dart']
  };
}
