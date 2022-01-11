// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageLike _$$_PackageLikeFromJson(Map<String, dynamic> json) =>
    _$_PackageLike(
      package: json['package'] as String,
      liked: json['liked'] as bool,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_PackageLikeToJson(_$_PackageLike instance) =>
    <String, dynamic>{
      'package': instance.package,
      'liked': instance.liked,
      'created': instance.created?.toIso8601String(),
    };
