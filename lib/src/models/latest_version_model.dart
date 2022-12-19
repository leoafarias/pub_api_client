import 'pub_package_model.dart';

/// Latest Version update for package
class LatestVersion {
  final bool needUpdate;
  final String latestVersion;
  final PubPackage packageInfo;

  /// Constructor
  LatestVersion({
    required this.needUpdate,
    required this.latestVersion,
    required this.packageInfo,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LatestVersion &&
        other.needUpdate == needUpdate &&
        other.latestVersion == latestVersion &&
        other.packageInfo == packageInfo;
  }

  @override
  int get hashCode =>
      needUpdate.hashCode ^ latestVersion.hashCode ^ packageInfo.hashCode;
}
