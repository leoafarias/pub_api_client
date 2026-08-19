import 'package:dart_mappable/dart_mappable.dart';

part 'package_version_options_model.mapper.dart';

/// Retraction options for a package version.
@MappableClass()
class PackageVersionOptions with PackageVersionOptionsMappable {
  /// Whether pub.dev has marked the version as retracted.
  final bool isRetracted;

  /// Creates package-version options.
  const PackageVersionOptions({this.isRetracted = false});

  /// Decodes package-version options from a map.
  static const fromMap = PackageVersionOptionsMapper.fromMap;

  /// Decodes package-version options from JSON.
  static const fromJson = PackageVersionOptionsMapper.fromJson;
}
