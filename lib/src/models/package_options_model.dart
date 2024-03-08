import 'package:dart_mappable/dart_mappable.dart';

part 'package_options_model.mapper.dart';

/// Package Options Model
@MappableClass()
class PackageOptions with PackageOptionsMappable {
  final bool isDiscontinued;
  final bool isUnlisted;
  final String? replacedBy;

  const PackageOptions({
    this.isDiscontinued = false,
    this.isUnlisted = false,
    this.replacedBy,
  });

  static const fromMap = PackageOptionsMapper.fromMap;
  static const fromJson = PackageOptionsMapper.fromJson;
}
