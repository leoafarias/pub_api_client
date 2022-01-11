// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResults _$$_SearchResultsFromJson(Map<String, dynamic> json) =>
    _$_SearchResults(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$_SearchResultsToJson(_$_SearchResults instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'next': instance.next,
    };

_$_PackageResult _$$_PackageResultFromJson(Map<String, dynamic> json) =>
    _$_PackageResult(
      package: json['package'] as String,
    );

Map<String, dynamic> _$$_PackageResultToJson(_$_PackageResult instance) =>
    <String, dynamic>{
      'package': instance.package,
    };
