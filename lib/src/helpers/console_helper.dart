import '../../pub_api_client.dart';

/// Checks and prints if [currentVersion] of a [package]
/// is not the latest version.
Future<bool> checkUpdatePrinter(
  String package, {
  String currentVersion,
}) async {
  final api = PubClient();
  final latest = await api.checkLatest(package, currentVersion: currentVersion);
  final latestVersion = latest.latestVersion;

  if (latest.needUpdate) {
    print(
      'Update Available for $package: $currentVersion → $latestVersion',
    );
    print('Changelog: ${latest.packageInfo.changelogUrl}');
  }

  return latest.needUpdate;
}
