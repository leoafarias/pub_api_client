import 'package:dart_mappable/dart_mappable.dart';

part 'package_version_options_model.mapper.dart';

/// Options of a single package version.
///
/// Returned by `GET /api/packages/<package>/versions/<version>/options`.
@MappableClass()
class PackageVersionOptions with PackageVersionOptionsMappable {
  final bool isRetracted;

  const PackageVersionOptions({this.isRetracted = false});

  static const fromMap = PackageVersionOptionsMapper.fromMap;
  static const fromJson = PackageVersionOptionsMapper.fromJson;
}
