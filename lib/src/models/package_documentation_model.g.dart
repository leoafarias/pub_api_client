// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_documentation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDocumentationImpl _$$PackageDocumentationImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageDocumentationImpl(
      name: json['name'] as String,
      versions: (json['versions'] as List<dynamic>)
          .map((e) =>
              PackageDocumentationVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageDocumentationImplToJson(
        _$PackageDocumentationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions,
    };

_$PackageDocumentationVersionImpl _$$PackageDocumentationVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageDocumentationVersionImpl(
      version: json['version'] as String,
      status: json['status'] as String,
      hasDocumentation: json['hasDocumentation'] as bool,
    );

Map<String, dynamic> _$$PackageDocumentationVersionImplToJson(
        _$PackageDocumentationVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'status': instance.status,
      'hasDocumentation': instance.hasDocumentation,
    };
