import 'package:dart_mappable/dart_mappable.dart';

part 'package_advisories_model.mapper.dart';

/// Package Advisories Model
@MappableClass()
class PackageAdvisories with PackageAdvisoriesMappable {
  final List<SecurityAdvisory> advisories;
  final DateTime? advisoriesUpdated;

  const PackageAdvisories({
    required this.advisories,
    this.advisoriesUpdated,
  });

  static const fromMap = PackageAdvisoriesMapper.fromMap;
  static const fromJson = PackageAdvisoriesMapper.fromJson;
}

/// Security Advisory Model (OSV Schema)
@MappableClass()
class SecurityAdvisory with SecurityAdvisoryMappable {
  final String id;
  final String? summary;
  final String? details;
  final List<Affected>? affected;
  @MappableField(key: 'database_specific')
  final Map<String, dynamic>? databaseSpecific;

  const SecurityAdvisory({
    required this.id,
    this.summary,
    this.details,
    this.affected,
    this.databaseSpecific,
  });

  /// Convenience getter for pub display URL
  String? get pubDisplayUrl =>
      databaseSpecific?['pub_display_url'] as String?;

  static const fromMap = SecurityAdvisoryMapper.fromMap;
  static const fromJson = SecurityAdvisoryMapper.fromJson;
}

/// Affected Model (OSV Schema)
@MappableClass()
class Affected with AffectedMappable {
  final List<String>? versions;

  const Affected({this.versions});

  static const fromMap = AffectedMapper.fromMap;
  static const fromJson = AffectedMapper.fromJson;
}
