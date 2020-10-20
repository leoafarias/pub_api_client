// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pub_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PubPackage _$PubPackageFromJson(Map<String, dynamic> json) {
  return _PubPackage.fromJson(json);
}

/// @nodoc
class _$PubPackageTearOff {
  const _$PubPackageTearOff();

// ignore: unused_element
  _PubPackage call(
      {String name, PackageVersion latest, List<PackageVersion> versions}) {
    return _PubPackage(
      name: name,
      latest: latest,
      versions: versions,
    );
  }

// ignore: unused_element
  PubPackage fromJson(Map<String, Object> json) {
    return PubPackage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PubPackage = _$PubPackageTearOff();

/// @nodoc
mixin _$PubPackage {
  String get name;
  PackageVersion get latest;
  List<PackageVersion> get versions;

  Map<String, dynamic> toJson();
  $PubPackageCopyWith<PubPackage> get copyWith;
}

/// @nodoc
abstract class $PubPackageCopyWith<$Res> {
  factory $PubPackageCopyWith(
          PubPackage value, $Res Function(PubPackage) then) =
      _$PubPackageCopyWithImpl<$Res>;
  $Res call(
      {String name, PackageVersion latest, List<PackageVersion> versions});

  $PackageVersionCopyWith<$Res> get latest;
}

/// @nodoc
class _$PubPackageCopyWithImpl<$Res> implements $PubPackageCopyWith<$Res> {
  _$PubPackageCopyWithImpl(this._value, this._then);

  final PubPackage _value;
  // ignore: unused_field
  final $Res Function(PubPackage) _then;

  @override
  $Res call({
    Object name = freezed,
    Object latest = freezed,
    Object versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      latest: latest == freezed ? _value.latest : latest as PackageVersion,
      versions: versions == freezed
          ? _value.versions
          : versions as List<PackageVersion>,
    ));
  }

  @override
  $PackageVersionCopyWith<$Res> get latest {
    if (_value.latest == null) {
      return null;
    }
    return $PackageVersionCopyWith<$Res>(_value.latest, (value) {
      return _then(_value.copyWith(latest: value));
    });
  }
}

/// @nodoc
abstract class _$PubPackageCopyWith<$Res> implements $PubPackageCopyWith<$Res> {
  factory _$PubPackageCopyWith(
          _PubPackage value, $Res Function(_PubPackage) then) =
      __$PubPackageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, PackageVersion latest, List<PackageVersion> versions});

  @override
  $PackageVersionCopyWith<$Res> get latest;
}

/// @nodoc
class __$PubPackageCopyWithImpl<$Res> extends _$PubPackageCopyWithImpl<$Res>
    implements _$PubPackageCopyWith<$Res> {
  __$PubPackageCopyWithImpl(
      _PubPackage _value, $Res Function(_PubPackage) _then)
      : super(_value, (v) => _then(v as _PubPackage));

  @override
  _PubPackage get _value => super._value as _PubPackage;

  @override
  $Res call({
    Object name = freezed,
    Object latest = freezed,
    Object versions = freezed,
  }) {
    return _then(_PubPackage(
      name: name == freezed ? _value.name : name as String,
      latest: latest == freezed ? _value.latest : latest as PackageVersion,
      versions: versions == freezed
          ? _value.versions
          : versions as List<PackageVersion>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PubPackage extends _PubPackage {
  _$_PubPackage({this.name, this.latest, this.versions}) : super._();

  factory _$_PubPackage.fromJson(Map<String, dynamic> json) =>
      _$_$_PubPackageFromJson(json);

  @override
  final String name;
  @override
  final PackageVersion latest;
  @override
  final List<PackageVersion> versions;

  @override
  String toString() {
    return 'PubPackage(name: $name, latest: $latest, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PubPackage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.latest, latest) ||
                const DeepCollectionEquality().equals(other.latest, latest)) &&
            (identical(other.versions, versions) ||
                const DeepCollectionEquality()
                    .equals(other.versions, versions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(latest) ^
      const DeepCollectionEquality().hash(versions);

  @override
  _$PubPackageCopyWith<_PubPackage> get copyWith =>
      __$PubPackageCopyWithImpl<_PubPackage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PubPackageToJson(this);
  }
}

abstract class _PubPackage extends PubPackage {
  _PubPackage._() : super._();
  factory _PubPackage(
      {String name,
      PackageVersion latest,
      List<PackageVersion> versions}) = _$_PubPackage;

  factory _PubPackage.fromJson(Map<String, dynamic> json) =
      _$_PubPackage.fromJson;

  @override
  String get name;
  @override
  PackageVersion get latest;
  @override
  List<PackageVersion> get versions;
  @override
  _$PubPackageCopyWith<_PubPackage> get copyWith;
}

PackageVersion _$PackageVersionFromJson(Map<String, dynamic> json) {
  return _PackageVersion.fromJson(json);
}

/// @nodoc
class _$PackageVersionTearOff {
  const _$PackageVersionTearOff();

// ignore: unused_element
  _PackageVersion call(
      {String version,
      Pubspec pubspec,
      String archiveUrl,
      DateTime published}) {
    return _PackageVersion(
      version: version,
      pubspec: pubspec,
      archiveUrl: archiveUrl,
      published: published,
    );
  }

// ignore: unused_element
  PackageVersion fromJson(Map<String, Object> json) {
    return PackageVersion.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageVersion = _$PackageVersionTearOff();

/// @nodoc
mixin _$PackageVersion {
  String get version;
  Pubspec get pubspec;
  String get archiveUrl;
  DateTime get published;

  Map<String, dynamic> toJson();
  $PackageVersionCopyWith<PackageVersion> get copyWith;
}

/// @nodoc
abstract class $PackageVersionCopyWith<$Res> {
  factory $PackageVersionCopyWith(
          PackageVersion value, $Res Function(PackageVersion) then) =
      _$PackageVersionCopyWithImpl<$Res>;
  $Res call(
      {String version, Pubspec pubspec, String archiveUrl, DateTime published});
}

/// @nodoc
class _$PackageVersionCopyWithImpl<$Res>
    implements $PackageVersionCopyWith<$Res> {
  _$PackageVersionCopyWithImpl(this._value, this._then);

  final PackageVersion _value;
  // ignore: unused_field
  final $Res Function(PackageVersion) _then;

  @override
  $Res call({
    Object version = freezed,
    Object pubspec = freezed,
    Object archiveUrl = freezed,
    Object published = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed ? _value.version : version as String,
      pubspec: pubspec == freezed ? _value.pubspec : pubspec as Pubspec,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      published:
          published == freezed ? _value.published : published as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PackageVersionCopyWith<$Res>
    implements $PackageVersionCopyWith<$Res> {
  factory _$PackageVersionCopyWith(
          _PackageVersion value, $Res Function(_PackageVersion) then) =
      __$PackageVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String version, Pubspec pubspec, String archiveUrl, DateTime published});
}

/// @nodoc
class __$PackageVersionCopyWithImpl<$Res>
    extends _$PackageVersionCopyWithImpl<$Res>
    implements _$PackageVersionCopyWith<$Res> {
  __$PackageVersionCopyWithImpl(
      _PackageVersion _value, $Res Function(_PackageVersion) _then)
      : super(_value, (v) => _then(v as _PackageVersion));

  @override
  _PackageVersion get _value => super._value as _PackageVersion;

  @override
  $Res call({
    Object version = freezed,
    Object pubspec = freezed,
    Object archiveUrl = freezed,
    Object published = freezed,
  }) {
    return _then(_PackageVersion(
      version: version == freezed ? _value.version : version as String,
      pubspec: pubspec == freezed ? _value.pubspec : pubspec as Pubspec,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      published:
          published == freezed ? _value.published : published as DateTime,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_PackageVersion implements _PackageVersion {
  _$_PackageVersion(
      {this.version, this.pubspec, this.archiveUrl, this.published});

  factory _$_PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageVersionFromJson(json);

  @override
  final String version;
  @override
  final Pubspec pubspec;
  @override
  final String archiveUrl;
  @override
  final DateTime published;

  @override
  String toString() {
    return 'PackageVersion(version: $version, pubspec: $pubspec, archiveUrl: $archiveUrl, published: $published)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageVersion &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.pubspec, pubspec) ||
                const DeepCollectionEquality()
                    .equals(other.pubspec, pubspec)) &&
            (identical(other.archiveUrl, archiveUrl) ||
                const DeepCollectionEquality()
                    .equals(other.archiveUrl, archiveUrl)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(pubspec) ^
      const DeepCollectionEquality().hash(archiveUrl) ^
      const DeepCollectionEquality().hash(published);

  @override
  _$PackageVersionCopyWith<_PackageVersion> get copyWith =>
      __$PackageVersionCopyWithImpl<_PackageVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageVersionToJson(this);
  }
}

abstract class _PackageVersion implements PackageVersion {
  factory _PackageVersion(
      {String version,
      Pubspec pubspec,
      String archiveUrl,
      DateTime published}) = _$_PackageVersion;

  factory _PackageVersion.fromJson(Map<String, dynamic> json) =
      _$_PackageVersion.fromJson;

  @override
  String get version;
  @override
  Pubspec get pubspec;
  @override
  String get archiveUrl;
  @override
  DateTime get published;
  @override
  _$PackageVersionCopyWith<_PackageVersion> get copyWith;
}
