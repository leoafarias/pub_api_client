// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResults _$_$_SearchResultsFromJson(Map<String, dynamic> json) {
  return _$_SearchResults(
    packages: (json['packages'] as List)
        ?.map((e) => e == null
            ? null
            : PackageResult.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    next: json['next'] as String,
  );
}

Map<String, dynamic> _$_$_SearchResultsToJson(_$_SearchResults instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'next': instance.next,
    };

_$_PackageResult _$_$_PackageResultFromJson(Map<String, dynamic> json) {
  return _$_PackageResult(
    package: json['package'] as String,
  );
}

Map<String, dynamic> _$_$_PackageResultToJson(_$_PackageResult instance) =>
    <String, dynamic>{
      'package': instance.package,
    };
