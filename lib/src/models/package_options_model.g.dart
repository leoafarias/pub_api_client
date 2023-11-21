// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageOptionsImpl _$$PackageOptionsImplFromJson(Map<String, dynamic> json) =>
    _$PackageOptionsImpl(
      isDiscontinued: json['isDiscontinued'] as bool,
      isUnlisted: json['isUnlisted'] as bool,
      replacedBy: json['replacedBy'] as String?,
    );

Map<String, dynamic> _$$PackageOptionsImplToJson(
        _$PackageOptionsImpl instance) =>
    <String, dynamic>{
      'isDiscontinued': instance.isDiscontinued,
      'isUnlisted': instance.isUnlisted,
      'replacedBy': instance.replacedBy,
    };
