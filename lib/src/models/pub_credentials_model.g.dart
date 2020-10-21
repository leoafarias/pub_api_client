// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_credentials_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PubCredentials _$_$_PubCredentialsFromJson(Map<String, dynamic> json) {
  return _$_PubCredentials(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    idToken: json['idToken'] as String,
    tokenEndpoint: (json['tokenEndpoint'] as num)?.toDouble(),
    scopes: (json['scopes'] as List)?.map((e) => e as String)?.toList(),
    expiration: json['expiration'] as int,
  );
}

Map<String, dynamic> _$_$_PubCredentialsToJson(_$_PubCredentials instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'tokenEndpoint': instance.tokenEndpoint,
      'scopes': instance.scopes,
      'expiration': instance.expiration,
    };
