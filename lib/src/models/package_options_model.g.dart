// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageOptions _$$_PackageOptionsFromJson(Map<String, dynamic> json) =>
    _$_PackageOptions(
      isDiscontinued: json['isDiscontinued'] as bool? ?? false,
      isUnlisted: json['isUnlisted'] as bool? ?? false,
      replacedBy: json['replacedBy'] as String?,
    );

Map<String, dynamic> _$$_PackageOptionsToJson(_$_PackageOptions instance) =>
    <String, dynamic>{
      'isDiscontinued': instance.isDiscontinued,
      'isUnlisted': instance.isUnlisted,
      'replacedBy': instance.replacedBy,
    };
