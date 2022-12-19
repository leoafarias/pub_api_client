import 'package:pubspec/pubspec.dart';

/// Package Model
class PubPackage {
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

  Map<String, dynamic> toMap() => {
        'name': name,
        'latest': latest.toMap(),
        'versions': versions.map((x) => x.toMap()).toList(),
      };

  factory PubPackage.fromMap(Map<String, dynamic> map) {
    final versionMap = map['versions'] as List<dynamic>? ?? [];
    return PubPackage(
      name: map['name'] as String? ?? '',
      latest:
          PackageVersion.fromMap(map['latest'] as Map<String, dynamic>? ?? {}),
      versions: List<PackageVersion>.from(
        versionMap.map(
          (x) => PackageVersion.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}

/// Package Version Model
class PackageVersion {
  final String version;
  final PubSpec pubspec;
  final String archiveUrl;
  final DateTime published;
  const PackageVersion({
    required this.version,
    required this.pubspec,
    required this.archiveUrl,
    required this.published,
  });

  Map<String, dynamic> toMap() => {
        'version': version,
        'pubspec': pubspec.toJson(),
        'archiveUrl': archiveUrl,
        'published': published.millisecondsSinceEpoch,
      };

  factory PackageVersion.fromMap(Map<String, dynamic> map) => PackageVersion(
        version: map['version'] as String? ?? '',
        pubspec:
            PubSpec.fromJson(map['pubspec'] as Map<String, dynamic>? ?? {}),
        archiveUrl: map['archiveUrl'] as String? ?? '',
        published: DateTime.parse(map['published'] as String? ?? ''),
      );
}
