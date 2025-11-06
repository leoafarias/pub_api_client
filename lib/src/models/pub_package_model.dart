import 'package:dart_mappable/dart_mappable.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

part 'pub_package_model.mapper.dart';

/// Package Model
@MappableClass(includeCustomMappers: [
  PubspecMapper(),
])
class PubPackage with PubPackageMappable {
  final String name;
  final PackageVersion latest;
  final List<PackageVersion> versions;
  final bool? isDiscontinued;
  final String? replacedBy;
  final DateTime? advisoriesUpdated;
  const PubPackage({
    required this.name,
    required this.latest,
    this.versions = const [],
    this.isDiscontinued,
    this.replacedBy,
    this.advisoriesUpdated,
  });

  String get version => latest.version;
  String get description => latestPubspec.description ?? '';
  String get url => 'https://pub.dev/packages/$name';
  String get changelogUrl => '$url/changelog';
  Pubspec get latestPubspec => latest.pubspec;

  static const fromMap = PubPackageMapper.fromMap;
  static const fromJson = PubPackageMapper.fromJson;
}

/// Package Version Model
@MappableClass(includeCustomMappers: [PubspecMapper()])
class PackageVersion with PackageVersionMappable {
  final String version;
  final Pubspec pubspec;
  @MappableField(key: 'archive_url')
  final String archiveUrl;
  final DateTime published;
  @MappableField(key: 'archive_sha256')
  final String archiveSha256;
  final bool retracted;
  const PackageVersion({
    required this.version,
    required this.pubspec,
    required this.archiveUrl,
    required this.published,
    required this.archiveSha256,
    this.retracted = false,
  });

  static const fromMap = PackageVersionMapper.fromMap;
  static const fromJson = PackageVersionMapper.fromJson;
}

class PubspecMapper extends SimpleMapper<Pubspec> {
  const PubspecMapper();

  @override
  // ignore: avoid-dynamic
  Pubspec decode(dynamic value) => Pubspec.fromJson(value, lenient: true);

  @override
  // ignore: avoid-dynamic
  dynamic encode(Pubspec self) => self.toString();
}
