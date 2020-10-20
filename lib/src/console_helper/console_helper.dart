import 'package:pub_api_client/pub_api_client.dart';

Future<bool> checkUpdatePrinter(
  String name, {
  String currentVersion,
}) async {
  final api = PubClient();
  final latest = await api.checkLatest(name, currentVersion: currentVersion);

  if (latest.needUpdate) {
    print(
        'Update Available for $name: ${currentVersion} → ${latest.latestVersion}');
    print('Changelog: ${latest.packageInfo.changelogUrl}');
  }

  return latest.needUpdate;
}
