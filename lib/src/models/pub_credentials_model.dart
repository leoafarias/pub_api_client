import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_credentials_model.freezed.dart';
part 'pub_credentials_model.g.dart';

@freezed
abstract class PubCredentials with _$PubCredentials {
  factory PubCredentials({
    final String accessToken,
    final String refreshToken,
    final String idToken,
    final double tokenEndpoint,
    final List<String> scopes,
    final int expiration,
  }) = _PubCredentials;

  factory PubCredentials.fromJson(Map<String, dynamic> json) =>
      _$PubCredentialsFromJson(json);
}
