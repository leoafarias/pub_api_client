// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageNamesResultsImpl _$$PackageNamesResultsImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageNamesResultsImpl(
      packages:
          (json['packages'] as List<dynamic>).map((e) => e as String).toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$PackageNamesResultsImplToJson(
        _$PackageNamesResultsImpl instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'next': instance.next,
    };

_$SearchResultsImpl _$$SearchResultsImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultsImpl(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$SearchResultsImplToJson(_$SearchResultsImpl instance) =>
    <String, dynamic>{
      'packages': instance.packages,
      'next': instance.next,
    };

_$PackageResultImpl _$$PackageResultImplFromJson(Map<String, dynamic> json) =>
    _$PackageResultImpl(
      package: json['package'] as String,
    );

Map<String, dynamic> _$$PackageResultImplToJson(_$PackageResultImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
    };
