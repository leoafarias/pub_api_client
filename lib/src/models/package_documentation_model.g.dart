// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_documentation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageDocumentation _$$_PackageDocumentationFromJson(
        Map<String, dynamic> json) =>
    _$_PackageDocumentation(
      name: json['name'] as String,
      latestStableVersion: json['latestStableVersion'] as String,
      versions: (json['versions'] as List<dynamic>?)
              ?.map((e) => PackageDocumentationVersion.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PackageDocumentationToJson(
        _$_PackageDocumentation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latestStableVersion': instance.latestStableVersion,
      'versions': instance.versions,
    };

_$_PackageDocumentationVersion _$$_PackageDocumentationVersionFromJson(
        Map<String, dynamic> json) =>
    _$_PackageDocumentationVersion(
      version: json['version'] as String,
      status: json['status'] as String,
      hasDocumentation: json['hasDocumentation'] as bool,
    );

Map<String, dynamic> _$$_PackageDocumentationVersionToJson(
        _$_PackageDocumentationVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'status': instance.status,
      'hasDocumentation': instance.hasDocumentation,
    };
