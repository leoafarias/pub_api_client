// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pub_credentials_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubCredentials _$PubCredentialsFromJson(Map<String, dynamic> json) {
  return _PubCredentials.fromJson(json);
}

/// @nodoc
class _$PubCredentialsTearOff {
  const _$PubCredentialsTearOff();

  _PubCredentials call(
      {required String accessToken,
      required String refreshToken,
      required String idToken,
      required double tokenEndpoint,
      required List<String> scopes,
      required int expiration}) {
    return _PubCredentials(
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken,
      tokenEndpoint: tokenEndpoint,
      scopes: scopes,
      expiration: expiration,
    );
  }

  PubCredentials fromJson(Map<String, Object> json) {
    return PubCredentials.fromJson(json);
  }
}

/// @nodoc
const $PubCredentials = _$PubCredentialsTearOff();

/// @nodoc
mixin _$PubCredentials {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  double get tokenEndpoint => throw _privateConstructorUsedError;
  List<String> get scopes => throw _privateConstructorUsedError;
  int get expiration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubCredentialsCopyWith<PubCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubCredentialsCopyWith<$Res> {
  factory $PubCredentialsCopyWith(
          PubCredentials value, $Res Function(PubCredentials) then) =
      _$PubCredentialsCopyWithImpl<$Res>;
  $Res call(
      {String accessToken,
      String refreshToken,
      String idToken,
      double tokenEndpoint,
      List<String> scopes,
      int expiration});
}

/// @nodoc
class _$PubCredentialsCopyWithImpl<$Res>
    implements $PubCredentialsCopyWith<$Res> {
  _$PubCredentialsCopyWithImpl(this._value, this._then);

  final PubCredentials _value;
  // ignore: unused_field
  final $Res Function(PubCredentials) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? idToken = freezed,
    Object? tokenEndpoint = freezed,
    Object? scopes = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: tokenEndpoint == freezed
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as double,
      scopes: scopes == freezed
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PubCredentialsCopyWith<$Res>
    implements $PubCredentialsCopyWith<$Res> {
  factory _$PubCredentialsCopyWith(
          _PubCredentials value, $Res Function(_PubCredentials) then) =
      __$PubCredentialsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accessToken,
      String refreshToken,
      String idToken,
      double tokenEndpoint,
      List<String> scopes,
      int expiration});
}

/// @nodoc
class __$PubCredentialsCopyWithImpl<$Res>
    extends _$PubCredentialsCopyWithImpl<$Res>
    implements _$PubCredentialsCopyWith<$Res> {
  __$PubCredentialsCopyWithImpl(
      _PubCredentials _value, $Res Function(_PubCredentials) _then)
      : super(_value, (v) => _then(v as _PubCredentials));

  @override
  _PubCredentials get _value => super._value as _PubCredentials;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? idToken = freezed,
    Object? tokenEndpoint = freezed,
    Object? scopes = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_PubCredentials(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: idToken == freezed
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: tokenEndpoint == freezed
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as double,
      scopes: scopes == freezed
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PubCredentials implements _PubCredentials {
  _$_PubCredentials(
      {required this.accessToken,
      required this.refreshToken,
      required this.idToken,
      required this.tokenEndpoint,
      required this.scopes,
      required this.expiration});

  factory _$_PubCredentials.fromJson(Map<String, dynamic> json) =>
      _$_$_PubCredentialsFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String idToken;
  @override
  final double tokenEndpoint;
  @override
  final List<String> scopes;
  @override
  final int expiration;

  @override
  String toString() {
    return 'PubCredentials(accessToken: $accessToken, refreshToken: $refreshToken, idToken: $idToken, tokenEndpoint: $tokenEndpoint, scopes: $scopes, expiration: $expiration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PubCredentials &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.tokenEndpoint, tokenEndpoint) ||
                const DeepCollectionEquality()
                    .equals(other.tokenEndpoint, tokenEndpoint)) &&
            (identical(other.scopes, scopes) ||
                const DeepCollectionEquality().equals(other.scopes, scopes)) &&
            (identical(other.expiration, expiration) ||
                const DeepCollectionEquality()
                    .equals(other.expiration, expiration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(tokenEndpoint) ^
      const DeepCollectionEquality().hash(scopes) ^
      const DeepCollectionEquality().hash(expiration);

  @JsonKey(ignore: true)
  @override
  _$PubCredentialsCopyWith<_PubCredentials> get copyWith =>
      __$PubCredentialsCopyWithImpl<_PubCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PubCredentialsToJson(this);
  }
}

abstract class _PubCredentials implements PubCredentials {
  factory _PubCredentials(
      {required String accessToken,
      required String refreshToken,
      required String idToken,
      required double tokenEndpoint,
      required List<String> scopes,
      required int expiration}) = _$_PubCredentials;

  factory _PubCredentials.fromJson(Map<String, dynamic> json) =
      _$_PubCredentials.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  String get idToken => throw _privateConstructorUsedError;
  @override
  double get tokenEndpoint => throw _privateConstructorUsedError;
  @override
  List<String> get scopes => throw _privateConstructorUsedError;
  @override
  int get expiration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PubCredentialsCopyWith<_PubCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
