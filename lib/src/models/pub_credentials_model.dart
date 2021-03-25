import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_credentials_model.freezed.dart';
part 'pub_credentials_model.g.dart';

/// Pub Credentials Model
@freezed
abstract class PubCredentials with _$PubCredentials {
  factory PubCredentials({
    required final String accessToken,
    required final String refreshToken,
    required final String idToken,
    required final double tokenEndpoint,
    required final List<String> scopes,
    required final int expiration,
  }) = _PubCredentials;

  factory PubCredentials.fromJson(Map<String, dynamic> json) =>
      _$PubCredentialsFromJson(json);
}
