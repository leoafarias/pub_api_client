// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'package_options_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageOptions _$PackageOptionsFromJson(Map<String, dynamic> json) {
  return _PackageOptions.fromJson(json);
}

/// @nodoc
class _$PackageOptionsTearOff {
  const _$PackageOptionsTearOff();

// ignore: unused_element
  _PackageOptions call(
      {bool isDiscontinued, String replacedBy, bool isUnlisted}) {
    return _PackageOptions(
      isDiscontinued: isDiscontinued,
      replacedBy: replacedBy,
      isUnlisted: isUnlisted,
    );
  }

// ignore: unused_element
  PackageOptions fromJson(Map<String, Object> json) {
    return PackageOptions.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageOptions = _$PackageOptionsTearOff();

/// @nodoc
mixin _$PackageOptions {
  bool get isDiscontinued;
  String get replacedBy;
  bool get isUnlisted;

  Map<String, dynamic> toJson();
  $PackageOptionsCopyWith<PackageOptions> get copyWith;
}

/// @nodoc
abstract class $PackageOptionsCopyWith<$Res> {
  factory $PackageOptionsCopyWith(
          PackageOptions value, $Res Function(PackageOptions) then) =
      _$PackageOptionsCopyWithImpl<$Res>;
  $Res call({bool isDiscontinued, String replacedBy, bool isUnlisted});
}

/// @nodoc
class _$PackageOptionsCopyWithImpl<$Res>
    implements $PackageOptionsCopyWith<$Res> {
  _$PackageOptionsCopyWithImpl(this._value, this._then);

  final PackageOptions _value;
  // ignore: unused_field
  final $Res Function(PackageOptions) _then;

  @override
  $Res call({
    Object isDiscontinued = freezed,
    Object replacedBy = freezed,
    Object isUnlisted = freezed,
  }) {
    return _then(_value.copyWith(
      isDiscontinued: isDiscontinued == freezed
          ? _value.isDiscontinued
          : isDiscontinued as bool,
      replacedBy:
          replacedBy == freezed ? _value.replacedBy : replacedBy as String,
      isUnlisted:
          isUnlisted == freezed ? _value.isUnlisted : isUnlisted as bool,
    ));
  }
}

/// @nodoc
abstract class _$PackageOptionsCopyWith<$Res>
    implements $PackageOptionsCopyWith<$Res> {
  factory _$PackageOptionsCopyWith(
          _PackageOptions value, $Res Function(_PackageOptions) then) =
      __$PackageOptionsCopyWithImpl<$Res>;
  @override
  $Res call({bool isDiscontinued, String replacedBy, bool isUnlisted});
}

/// @nodoc
class __$PackageOptionsCopyWithImpl<$Res>
    extends _$PackageOptionsCopyWithImpl<$Res>
    implements _$PackageOptionsCopyWith<$Res> {
  __$PackageOptionsCopyWithImpl(
      _PackageOptions _value, $Res Function(_PackageOptions) _then)
      : super(_value, (v) => _then(v as _PackageOptions));

  @override
  _PackageOptions get _value => super._value as _PackageOptions;

  @override
  $Res call({
    Object isDiscontinued = freezed,
    Object replacedBy = freezed,
    Object isUnlisted = freezed,
  }) {
    return _then(_PackageOptions(
      isDiscontinued: isDiscontinued == freezed
          ? _value.isDiscontinued
          : isDiscontinued as bool,
      replacedBy:
          replacedBy == freezed ? _value.replacedBy : replacedBy as String,
      isUnlisted:
          isUnlisted == freezed ? _value.isUnlisted : isUnlisted as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageOptions implements _PackageOptions {
  _$_PackageOptions({this.isDiscontinued, this.replacedBy, this.isUnlisted});

  factory _$_PackageOptions.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageOptionsFromJson(json);

  @override
  final bool isDiscontinued;
  @override
  final String replacedBy;
  @override
  final bool isUnlisted;

  @override
  String toString() {
    return 'PackageOptions(isDiscontinued: $isDiscontinued, replacedBy: $replacedBy, isUnlisted: $isUnlisted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageOptions &&
            (identical(other.isDiscontinued, isDiscontinued) ||
                const DeepCollectionEquality()
                    .equals(other.isDiscontinued, isDiscontinued)) &&
            (identical(other.replacedBy, replacedBy) ||
                const DeepCollectionEquality()
                    .equals(other.replacedBy, replacedBy)) &&
            (identical(other.isUnlisted, isUnlisted) ||
                const DeepCollectionEquality()
                    .equals(other.isUnlisted, isUnlisted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isDiscontinued) ^
      const DeepCollectionEquality().hash(replacedBy) ^
      const DeepCollectionEquality().hash(isUnlisted);

  @override
  _$PackageOptionsCopyWith<_PackageOptions> get copyWith =>
      __$PackageOptionsCopyWithImpl<_PackageOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageOptionsToJson(this);
  }
}

abstract class _PackageOptions implements PackageOptions {
  factory _PackageOptions(
      {bool isDiscontinued,
      String replacedBy,
      bool isUnlisted}) = _$_PackageOptions;

  factory _PackageOptions.fromJson(Map<String, dynamic> json) =
      _$_PackageOptions.fromJson;

  @override
  bool get isDiscontinued;
  @override
  String get replacedBy;
  @override
  bool get isUnlisted;
  @override
  _$PackageOptionsCopyWith<_PackageOptions> get copyWith;
}
