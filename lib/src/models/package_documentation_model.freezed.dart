// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'package_documentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageDocumentation _$PackageDocumentationFromJson(Map<String, dynamic> json) {
  return _PackageDocumentation.fromJson(json);
}

/// @nodoc
class _$PackageDocumentationTearOff {
  const _$PackageDocumentationTearOff();

// ignore: unused_element
  _PackageDocumentation call(
      {String name,
      String latestStableVersion,
      List<PackageDocumentationVersion> versions}) {
    return _PackageDocumentation(
      name: name,
      latestStableVersion: latestStableVersion,
      versions: versions,
    );
  }

// ignore: unused_element
  PackageDocumentation fromJson(Map<String, Object> json) {
    return PackageDocumentation.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageDocumentation = _$PackageDocumentationTearOff();

/// @nodoc
mixin _$PackageDocumentation {
  String get name;
  String get latestStableVersion;
  List<PackageDocumentationVersion> get versions;

  Map<String, dynamic> toJson();
  $PackageDocumentationCopyWith<PackageDocumentation> get copyWith;
}

/// @nodoc
abstract class $PackageDocumentationCopyWith<$Res> {
  factory $PackageDocumentationCopyWith(PackageDocumentation value,
          $Res Function(PackageDocumentation) then) =
      _$PackageDocumentationCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String latestStableVersion,
      List<PackageDocumentationVersion> versions});
}

/// @nodoc
class _$PackageDocumentationCopyWithImpl<$Res>
    implements $PackageDocumentationCopyWith<$Res> {
  _$PackageDocumentationCopyWithImpl(this._value, this._then);

  final PackageDocumentation _value;
  // ignore: unused_field
  final $Res Function(PackageDocumentation) _then;

  @override
  $Res call({
    Object name = freezed,
    Object latestStableVersion = freezed,
    Object versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      latestStableVersion: latestStableVersion == freezed
          ? _value.latestStableVersion
          : latestStableVersion as String,
      versions: versions == freezed
          ? _value.versions
          : versions as List<PackageDocumentationVersion>,
    ));
  }
}

/// @nodoc
abstract class _$PackageDocumentationCopyWith<$Res>
    implements $PackageDocumentationCopyWith<$Res> {
  factory _$PackageDocumentationCopyWith(_PackageDocumentation value,
          $Res Function(_PackageDocumentation) then) =
      __$PackageDocumentationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String latestStableVersion,
      List<PackageDocumentationVersion> versions});
}

/// @nodoc
class __$PackageDocumentationCopyWithImpl<$Res>
    extends _$PackageDocumentationCopyWithImpl<$Res>
    implements _$PackageDocumentationCopyWith<$Res> {
  __$PackageDocumentationCopyWithImpl(
      _PackageDocumentation _value, $Res Function(_PackageDocumentation) _then)
      : super(_value, (v) => _then(v as _PackageDocumentation));

  @override
  _PackageDocumentation get _value => super._value as _PackageDocumentation;

  @override
  $Res call({
    Object name = freezed,
    Object latestStableVersion = freezed,
    Object versions = freezed,
  }) {
    return _then(_PackageDocumentation(
      name: name == freezed ? _value.name : name as String,
      latestStableVersion: latestStableVersion == freezed
          ? _value.latestStableVersion
          : latestStableVersion as String,
      versions: versions == freezed
          ? _value.versions
          : versions as List<PackageDocumentationVersion>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageDocumentation implements _PackageDocumentation {
  _$_PackageDocumentation({this.name, this.latestStableVersion, this.versions});

  factory _$_PackageDocumentation.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageDocumentationFromJson(json);

  @override
  final String name;
  @override
  final String latestStableVersion;
  @override
  final List<PackageDocumentationVersion> versions;

  @override
  String toString() {
    return 'PackageDocumentation(name: $name, latestStableVersion: $latestStableVersion, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageDocumentation &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.latestStableVersion, latestStableVersion) ||
                const DeepCollectionEquality()
                    .equals(other.latestStableVersion, latestStableVersion)) &&
            (identical(other.versions, versions) ||
                const DeepCollectionEquality()
                    .equals(other.versions, versions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(latestStableVersion) ^
      const DeepCollectionEquality().hash(versions);

  @override
  _$PackageDocumentationCopyWith<_PackageDocumentation> get copyWith =>
      __$PackageDocumentationCopyWithImpl<_PackageDocumentation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageDocumentationToJson(this);
  }
}

abstract class _PackageDocumentation implements PackageDocumentation {
  factory _PackageDocumentation(
      {String name,
      String latestStableVersion,
      List<PackageDocumentationVersion> versions}) = _$_PackageDocumentation;

  factory _PackageDocumentation.fromJson(Map<String, dynamic> json) =
      _$_PackageDocumentation.fromJson;

  @override
  String get name;
  @override
  String get latestStableVersion;
  @override
  List<PackageDocumentationVersion> get versions;
  @override
  _$PackageDocumentationCopyWith<_PackageDocumentation> get copyWith;
}

PackageDocumentationVersion _$PackageDocumentationVersionFromJson(
    Map<String, dynamic> json) {
  return _PackageDocumentationVersion.fromJson(json);
}

/// @nodoc
class _$PackageDocumentationVersionTearOff {
  const _$PackageDocumentationVersionTearOff();

// ignore: unused_element
  _PackageDocumentationVersion call(
      {String version, String status, bool hasDocumentation}) {
    return _PackageDocumentationVersion(
      version: version,
      status: status,
      hasDocumentation: hasDocumentation,
    );
  }

// ignore: unused_element
  PackageDocumentationVersion fromJson(Map<String, Object> json) {
    return PackageDocumentationVersion.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageDocumentationVersion = _$PackageDocumentationVersionTearOff();

/// @nodoc
mixin _$PackageDocumentationVersion {
  String get version;
  String get status;
  bool get hasDocumentation;

  Map<String, dynamic> toJson();
  $PackageDocumentationVersionCopyWith<PackageDocumentationVersion>
      get copyWith;
}

/// @nodoc
abstract class $PackageDocumentationVersionCopyWith<$Res> {
  factory $PackageDocumentationVersionCopyWith(
          PackageDocumentationVersion value,
          $Res Function(PackageDocumentationVersion) then) =
      _$PackageDocumentationVersionCopyWithImpl<$Res>;
  $Res call({String version, String status, bool hasDocumentation});
}

/// @nodoc
class _$PackageDocumentationVersionCopyWithImpl<$Res>
    implements $PackageDocumentationVersionCopyWith<$Res> {
  _$PackageDocumentationVersionCopyWithImpl(this._value, this._then);

  final PackageDocumentationVersion _value;
  // ignore: unused_field
  final $Res Function(PackageDocumentationVersion) _then;

  @override
  $Res call({
    Object version = freezed,
    Object status = freezed,
    Object hasDocumentation = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed ? _value.version : version as String,
      status: status == freezed ? _value.status : status as String,
      hasDocumentation: hasDocumentation == freezed
          ? _value.hasDocumentation
          : hasDocumentation as bool,
    ));
  }
}

/// @nodoc
abstract class _$PackageDocumentationVersionCopyWith<$Res>
    implements $PackageDocumentationVersionCopyWith<$Res> {
  factory _$PackageDocumentationVersionCopyWith(
          _PackageDocumentationVersion value,
          $Res Function(_PackageDocumentationVersion) then) =
      __$PackageDocumentationVersionCopyWithImpl<$Res>;
  @override
  $Res call({String version, String status, bool hasDocumentation});
}

/// @nodoc
class __$PackageDocumentationVersionCopyWithImpl<$Res>
    extends _$PackageDocumentationVersionCopyWithImpl<$Res>
    implements _$PackageDocumentationVersionCopyWith<$Res> {
  __$PackageDocumentationVersionCopyWithImpl(
      _PackageDocumentationVersion _value,
      $Res Function(_PackageDocumentationVersion) _then)
      : super(_value, (v) => _then(v as _PackageDocumentationVersion));

  @override
  _PackageDocumentationVersion get _value =>
      super._value as _PackageDocumentationVersion;

  @override
  $Res call({
    Object version = freezed,
    Object status = freezed,
    Object hasDocumentation = freezed,
  }) {
    return _then(_PackageDocumentationVersion(
      version: version == freezed ? _value.version : version as String,
      status: status == freezed ? _value.status : status as String,
      hasDocumentation: hasDocumentation == freezed
          ? _value.hasDocumentation
          : hasDocumentation as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageDocumentationVersion implements _PackageDocumentationVersion {
  _$_PackageDocumentationVersion(
      {this.version, this.status, this.hasDocumentation});

  factory _$_PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageDocumentationVersionFromJson(json);

  @override
  final String version;
  @override
  final String status;
  @override
  final bool hasDocumentation;

  @override
  String toString() {
    return 'PackageDocumentationVersion(version: $version, status: $status, hasDocumentation: $hasDocumentation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageDocumentationVersion &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.hasDocumentation, hasDocumentation) ||
                const DeepCollectionEquality()
                    .equals(other.hasDocumentation, hasDocumentation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(hasDocumentation);

  @override
  _$PackageDocumentationVersionCopyWith<_PackageDocumentationVersion>
      get copyWith => __$PackageDocumentationVersionCopyWithImpl<
          _PackageDocumentationVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageDocumentationVersionToJson(this);
  }
}

abstract class _PackageDocumentationVersion
    implements PackageDocumentationVersion {
  factory _PackageDocumentationVersion(
      {String version,
      String status,
      bool hasDocumentation}) = _$_PackageDocumentationVersion;

  factory _PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =
      _$_PackageDocumentationVersion.fromJson;

  @override
  String get version;
  @override
  String get status;
  @override
  bool get hasDocumentation;
  @override
  _$PackageDocumentationVersionCopyWith<_PackageDocumentationVersion>
      get copyWith;
}
