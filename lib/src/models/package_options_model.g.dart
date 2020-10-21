// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageOptions _$_$_PackageOptionsFromJson(Map<String, dynamic> json) {
  return _$_PackageOptions(
    isDiscontinued: json['isDiscontinued'] as bool,
    replacedBy: json['replacedBy'] as String,
    isUnlisted: json['isUnlisted'] as bool,
  );
}

Map<String, dynamic> _$_$_PackageOptionsToJson(_$_PackageOptions instance) =>
    <String, dynamic>{
      'isDiscontinued': instance.isDiscontinued,
      'replacedBy': instance.replacedBy,
      'isUnlisted': instance.isUnlisted,
    };
