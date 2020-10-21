// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_documentation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageDocumentation _$_$_PackageDocumentationFromJson(
    Map<String, dynamic> json) {
  return _$_PackageDocumentation(
    name: json['name'] as String,
    latestStableVersion: json['latestStableVersion'] as String,
    versions: (json['versions'] as List)
        ?.map((e) => e == null
            ? null
            : PackageDocumentationVersion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PackageDocumentationToJson(
        _$_PackageDocumentation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latestStableVersion': instance.latestStableVersion,
      'versions': instance.versions,
    };

_$_PackageDocumentationVersion _$_$_PackageDocumentationVersionFromJson(
    Map<String, dynamic> json) {
  return _$_PackageDocumentationVersion(
    version: json['version'] as String,
    status: json['status'] as String,
    hasDocumentation: json['hasDocumentation'] as bool,
  );
}

Map<String, dynamic> _$_$_PackageDocumentationVersionToJson(
        _$_PackageDocumentationVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'status': instance.status,
      'hasDocumentation': instance.hasDocumentation,
    };
