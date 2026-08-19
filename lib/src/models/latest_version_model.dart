import 'package:dart_mappable/dart_mappable.dart';

import '../../pub_api_client.dart';

part 'latest_version_model.mapper.dart';

/// Latest Version update for package
///
/// No pub.dev endpoint returns this shape and no client method produces it;
/// it is unreachable API surface kept only for source compatibility.
/// Compare `PubPackage.version` against your own version instead.
@Deprecated('Unused; compare against PubPackage.version. Removed in 4.0.0')
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
