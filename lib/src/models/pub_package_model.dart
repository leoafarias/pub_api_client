import 'package:dart_mappable/dart_mappable.dart';
import 'package:pubspec/pubspec.dart';

part 'pub_package_model.mapper.dart';

/// Package Model
@MappableClass(includeCustomMappers: [PubspecMapper()])
class PubPackage with PubPackageMappable {
  final String name;
  final PackageVersion latest;
  final List<PackageVersion> versions;
  const PubPackage({
    required this.name,
    required this.latest,
    this.versions = const [],
  });

  String get version => latest.version;
  String get description => latestPubspec.description ?? '';
  String get url => 'https://pub.dev/packages/$name';
  String get changelogUrl => '$url/changelog';
  PubSpec get latestPubspec => latest.pubspec;

  static const fromMap = PubPackageMapper.fromMap;
  static const fromJson = PubPackageMapper.fromJson;
}

/// Package Version Model
@MappableClass(includeCustomMappers: [PubspecMapper()])
class PackageVersion with PackageVersionMappable {
  final String version;
  final PubSpec pubspec;
  @MappableField(key: 'archive_url')
  final String archiveUrl;
  final DateTime published;
  @MappableField(key: 'archive_sha256')
  final String archiveSha256;
  const PackageVersion({
    required this.version,
    required this.pubspec,
    required this.archiveUrl,
    required this.published,
    required this.archiveSha256,
  });

  static const fromMap = PackageVersionMapper.fromMap;
  static const fromJson = PackageVersionMapper.fromJson;
}

class PubspecMapper extends SimpleMapper<PubSpec> {
  const PubspecMapper();

  @override
  // ignore: avoid-dynamic
  PubSpec decode(dynamic value) => PubSpec.fromJson(value);

  @override
  // ignore: avoid-dynamic
  dynamic encode(PubSpec self) => self.toString();
}
