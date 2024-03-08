import 'package:dart_mappable/dart_mappable.dart';

import '../../pub_api_client.dart';

part 'latest_version_model.mapper.dart';

/// Latest Version update for package
@MappableClass()
class LatestVersion with LatestVersionMappable {
  final bool needUpdate;
  final String latestVersion;
  final PubPackage packageInfo;

  /// Constructor
  LatestVersion({
    required this.needUpdate,
    required this.latestVersion,
    required this.packageInfo,
  });

  static const fromMap = LatestVersionMapper.fromMap;
  static const fromJson = LatestVersionMapper.fromJson;
}
