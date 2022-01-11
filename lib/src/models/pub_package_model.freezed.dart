// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pub_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubPackage _$PubPackageFromJson(Map<String, dynamic> json) {
  return _PubPackage.fromJson(json);
}

/// @nodoc
class _$PubPackageTearOff {
  const _$PubPackageTearOff();

  _PubPackage call(
      {required String name,
      required PackageVersion latest,
      List<PackageVersion> versions = const []}) {
    return _PubPackage(
      name: name,
      latest: latest,
      versions: versions,
    );
  }

  PubPackage fromJson(Map<String, Object?> json) {
    return PubPackage.fromJson(json);
  }
}

/// @nodoc
const $PubPackage = _$PubPackageTearOff();

/// @nodoc
mixin _$PubPackage {
  String get name => throw _privateConstructorUsedError;
  PackageVersion get latest => throw _privateConstructorUsedError;
  List<PackageVersion> get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubPackageCopyWith<PubPackage> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? name = freezed,
    Object? latest = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: latest == freezed
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageVersion>,
    ));
  }

  @override
  $PackageVersionCopyWith<$Res> get latest {
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
    Object? name = freezed,
    Object? latest = freezed,
    Object? versions = freezed,
  }) {
    return _then(_PubPackage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: latest == freezed
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageVersion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PubPackage extends _PubPackage {
  _$_PubPackage(
      {required this.name, required this.latest, this.versions = const []})
      : super._();

  factory _$_PubPackage.fromJson(Map<String, dynamic> json) =>
      _$$_PubPackageFromJson(json);

  @override
  final String name;
  @override
  final PackageVersion latest;
  @JsonKey()
  @override
  final List<PackageVersion> versions;

  @override
  String toString() {
    return 'PubPackage(name: $name, latest: $latest, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PubPackage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latest, latest) &&
            const DeepCollectionEquality().equals(other.versions, versions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latest),
      const DeepCollectionEquality().hash(versions));

  @JsonKey(ignore: true)
  @override
  _$PubPackageCopyWith<_PubPackage> get copyWith =>
      __$PubPackageCopyWithImpl<_PubPackage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PubPackageToJson(this);
  }
}

abstract class _PubPackage extends PubPackage {
  factory _PubPackage(
      {required String name,
      required PackageVersion latest,
      List<PackageVersion> versions}) = _$_PubPackage;
  _PubPackage._() : super._();

  factory _PubPackage.fromJson(Map<String, dynamic> json) =
      _$_PubPackage.fromJson;

  @override
  String get name;
  @override
  PackageVersion get latest;
  @override
  List<PackageVersion> get versions;
  @override
  @JsonKey(ignore: true)
  _$PubPackageCopyWith<_PubPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageVersion _$PackageVersionFromJson(Map<String, dynamic> json) {
  return _PackageVersion.fromJson(json);
}

/// @nodoc
class _$PackageVersionTearOff {
  const _$PackageVersionTearOff();

  _PackageVersion call(
      {required String version,
      required PubSpec pubspec,
      required String archiveUrl,
      required DateTime published}) {
    return _PackageVersion(
      version: version,
      pubspec: pubspec,
      archiveUrl: archiveUrl,
      published: published,
    );
  }

  PackageVersion fromJson(Map<String, Object?> json) {
    return PackageVersion.fromJson(json);
  }
}

/// @nodoc
const $PackageVersion = _$PackageVersionTearOff();

/// @nodoc
mixin _$PackageVersion {
  String get version => throw _privateConstructorUsedError;
  PubSpec get pubspec => throw _privateConstructorUsedError;
  String get archiveUrl => throw _privateConstructorUsedError;
  DateTime get published => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageVersionCopyWith<PackageVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageVersionCopyWith<$Res> {
  factory $PackageVersionCopyWith(
          PackageVersion value, $Res Function(PackageVersion) then) =
      _$PackageVersionCopyWithImpl<$Res>;
  $Res call(
      {String version, PubSpec pubspec, String archiveUrl, DateTime published});
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
    Object? version = freezed,
    Object? pubspec = freezed,
    Object? archiveUrl = freezed,
    Object? published = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as PubSpec,
      archiveUrl: archiveUrl == freezed
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String version, PubSpec pubspec, String archiveUrl, DateTime published});
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
    Object? version = freezed,
    Object? pubspec = freezed,
    Object? archiveUrl = freezed,
    Object? published = freezed,
  }) {
    return _then(_PackageVersion(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as PubSpec,
      archiveUrl: archiveUrl == freezed
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PackageVersion implements _PackageVersion {
  _$_PackageVersion(
      {required this.version,
      required this.pubspec,
      required this.archiveUrl,
      required this.published});

  factory _$_PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$$_PackageVersionFromJson(json);

  @override
  final String version;
  @override
  final PubSpec pubspec;
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
        (other.runtimeType == runtimeType &&
            other is _PackageVersion &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.pubspec, pubspec) &&
            const DeepCollectionEquality()
                .equals(other.archiveUrl, archiveUrl) &&
            const DeepCollectionEquality().equals(other.published, published));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(pubspec),
      const DeepCollectionEquality().hash(archiveUrl),
      const DeepCollectionEquality().hash(published));

  @JsonKey(ignore: true)
  @override
  _$PackageVersionCopyWith<_PackageVersion> get copyWith =>
      __$PackageVersionCopyWithImpl<_PackageVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageVersionToJson(this);
  }
}

abstract class _PackageVersion implements PackageVersion {
  factory _PackageVersion(
      {required String version,
      required PubSpec pubspec,
      required String archiveUrl,
      required DateTime published}) = _$_PackageVersion;

  factory _PackageVersion.fromJson(Map<String, dynamic> json) =
      _$_PackageVersion.fromJson;

  @override
  String get version;
  @override
  PubSpec get pubspec;
  @override
  String get archiveUrl;
  @override
  DateTime get published;
  @override
  @JsonKey(ignore: true)
  _$PackageVersionCopyWith<_PackageVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
