import 'package:dart_mappable/dart_mappable.dart';

import '../../pub_api_client.dart';

part 'latest_version_model.mapper.dart';

/// Describes whether a newer package version exists.
///
/// No pub.dev endpoint returns this shape and no client method produces it;
/// it is unreachable API surface kept only for source compatibility.
/// Compare [PubPackage.version] against the installed version instead.
@Deprecated(
  'Use PubPackage.version instead. Scheduled for removal in 5.0.0.',
)
@MappableClass()
class LatestVersion with LatestVersionMappable {
  /// Whether [latestVersion] is newer than the installed version.
  final bool needUpdate;

  /// The latest published version string.
  final String latestVersion;

  /// Information about the latest published package version.
  final PubPackage packageInfo;

  /// Creates a latest-version result.
  LatestVersion({
    required this.needUpdate,
    required this.latestVersion,
    required this.packageInfo,
  });

  /// Decodes a latest-version result from a map.
  static const fromMap = LatestVersionMapper.fromMap;

  /// Decodes a latest-version result from JSON.
  static const fromJson = LatestVersionMapper.fromJson;
}
