import 'dart:convert';

import 'package:collection/collection.dart';

/// Package Documentation Model

class PackageDocumentation {
  final String name;

  final String latestStableVersion;

  final List<PackageDocumentationVersion> versions;

  PackageDocumentation({
    required this.name,
    required this.latestStableVersion,
    this.versions = const [],
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'latestStableVersion': latestStableVersion,
        'versions': versions.map((x) => x.toMap()).toList(),
      };

  factory PackageDocumentation.fromMap(Map<String, dynamic> map) {
    final versionMap = map['versions'] as List<dynamic>? ?? [];

    return PackageDocumentation(
      name: map['name'] as String? ?? '',
      latestStableVersion: map['latestStableVersion'] as String? ?? '',
      versions: versionMap
          .map((x) =>
              PackageDocumentationVersion.fromMap(x as Map<String, dynamic>))
          .toList(),
    );
  }
  String toJson() => json.encode(toMap());

  factory PackageDocumentation.fromJson(String source) =>
      PackageDocumentation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PackageDocumentation &&
        other.name == name &&
        other.latestStableVersion == latestStableVersion &&
        listEquals(other.versions, versions);
  }

  @override
  int get hashCode =>
      name.hashCode ^ latestStableVersion.hashCode ^ versions.hashCode;
}

/// Package Documentation Version Model

class PackageDocumentationVersion {
  final String version;
  final String status;
  final bool hasDocumentation;
  PackageDocumentationVersion({
    required this.version,
    required this.status,
    required this.hasDocumentation,
  });

  Map<String, dynamic> toMap() => {
        'version': version,
        'status': status,
        'hasDocumentation': hasDocumentation,
      };

  factory PackageDocumentationVersion.fromMap(Map<String, dynamic> map) =>
      PackageDocumentationVersion(
        version: map['version'] as String? ?? '',
        status: map['status'] as String? ?? '',
        hasDocumentation: map['hasDocumentation'] as bool? ?? false,
      );

  String toJson() => json.encode(toMap());

  factory PackageDocumentationVersion.fromJson(String source) =>
      PackageDocumentationVersion.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageDocumentationVersion &&
        other.version == version &&
        other.status == status &&
        other.hasDocumentation == hasDocumentation;
  }

  @override
  int get hashCode =>
      version.hashCode ^ status.hashCode ^ hasDocumentation.hashCode;
}
