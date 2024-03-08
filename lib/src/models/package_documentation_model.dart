import 'package:dart_mappable/dart_mappable.dart';

part 'package_documentation_model.mapper.dart';

/// Package Documentation Model
@MappableClass()
class PackageDocumentation with PackageDocumentationMappable {
  final String name;
  final List<PackageDocumentationVersion> versions;

  PackageDocumentation({
    required this.name,
    this.versions = const [],
  });

  static const fromMap = PackageDocumentationMapper.fromMap;
  static const fromJson = PackageDocumentationMapper.fromJson;
}

/// Package Documentation Version Model
@MappableClass()
class PackageDocumentationVersion with PackageDocumentationVersionMappable {
  final String version;
  final String status;
  final bool hasDocumentation;
  PackageDocumentationVersion({
    required this.version,
    required this.status,
    required this.hasDocumentation,
  });

  static const fromMap = PackageDocumentationVersionMapper.fromMap;
  static const fromJson = PackageDocumentationVersionMapper.fromJson;
}
