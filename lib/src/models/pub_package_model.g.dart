// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PubPackage _$_$_PubPackageFromJson(Map<String, dynamic> json) {
  return _$_PubPackage(
    name: json['name'] as String,
    latest: json['latest'] == null
        ? null
        : PackageVersion.fromJson(json['latest'] as Map<String, dynamic>),
    versions: (json['versions'] as List)
        ?.map((e) => e == null
            ? null
            : PackageVersion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PubPackageToJson(_$_PubPackage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
      'versions': instance.versions,
    };

_$_PackageVersion _$_$_PackageVersionFromJson(Map<String, dynamic> json) {
  return _$_PackageVersion(
    version: json['version'] as String,
    pubspec: json['pubspec'] == null
        ? null
        : Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
    archiveUrl: json['archive_url'] as String,
    published: json['published'] == null
        ? null
        : DateTime.parse(json['published'] as String),
  );
}

Map<String, dynamic> _$_$_PackageVersionToJson(_$_PackageVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'archive_url': instance.archiveUrl,
      'published': instance.published?.toIso8601String(),
    };
