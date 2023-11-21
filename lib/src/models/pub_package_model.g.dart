// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubPackageImpl _$$PubPackageImplFromJson(Map<String, dynamic> json) =>
    _$PubPackageImpl(
      name: json['name'] as String,
      latest: PackageVersion.fromJson(json['latest'] as Map<String, dynamic>),
      versions: (json['versions'] as List<dynamic>)
          .map((e) => PackageVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PubPackageImplToJson(_$PubPackageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
      'versions': instance.versions,
    };

_$PackageVersionImpl _$$PackageVersionImplFromJson(Map<String, dynamic> json) =>
    _$PackageVersionImpl(
      version: json['version'] as String,
      pubspec: PubSpec.fromJson(json['pubspec'] as Map<String, dynamic>?),
      archiveUrl: json['archiveUrl'] as String?,
      published: DateTime.parse(json['published'] as String),
    );

Map<String, dynamic> _$$PackageVersionImplToJson(
        _$PackageVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'archiveUrl': instance.archiveUrl,
      'published': instance.published.toIso8601String(),
    };
