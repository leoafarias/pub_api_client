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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubPackage _$PubPackageFromJson(Map<String, dynamic> json) {
  return _PubPackage.fromJson(json);
}

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
      _$PubPackageCopyWithImpl<$Res, PubPackage>;
  @useResult
  $Res call(
      {String name, PackageVersion latest, List<PackageVersion> versions});

  $PackageVersionCopyWith<$Res> get latest;
}

/// @nodoc
class _$PubPackageCopyWithImpl<$Res, $Val extends PubPackage>
    implements $PubPackageCopyWith<$Res> {
  _$PubPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
    Object? versions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageVersion>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageVersionCopyWith<$Res> get latest {
    return $PackageVersionCopyWith<$Res>(_value.latest, (value) {
      return _then(_value.copyWith(latest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PubPackageCopyWith<$Res>
    implements $PubPackageCopyWith<$Res> {
  factory _$$_PubPackageCopyWith(
          _$_PubPackage value, $Res Function(_$_PubPackage) then) =
      __$$_PubPackageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, PackageVersion latest, List<PackageVersion> versions});

  @override
  $PackageVersionCopyWith<$Res> get latest;
}

/// @nodoc
class __$$_PubPackageCopyWithImpl<$Res>
    extends _$PubPackageCopyWithImpl<$Res, _$_PubPackage>
    implements _$$_PubPackageCopyWith<$Res> {
  __$$_PubPackageCopyWithImpl(
      _$_PubPackage _value, $Res Function(_$_PubPackage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
    Object? versions = null,
  }) {
    return _then(_$_PubPackage(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as PackageVersion,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageVersion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PubPackage extends _PubPackage {
  _$_PubPackage(
      {required this.name,
      required this.latest,
      final List<PackageVersion> versions = const []})
      : _versions = versions,
        super._();

  factory _$_PubPackage.fromJson(Map<String, dynamic> json) =>
      _$$_PubPackageFromJson(json);

  @override
  final String name;
  @override
  final PackageVersion latest;
  final List<PackageVersion> _versions;
  @override
  @JsonKey()
  List<PackageVersion> get versions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  @override
  String toString() {
    return 'PubPackage(name: $name, latest: $latest, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PubPackage &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            const DeepCollectionEquality().equals(other._versions, _versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, latest,
      const DeepCollectionEquality().hash(_versions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PubPackageCopyWith<_$_PubPackage> get copyWith =>
      __$$_PubPackageCopyWithImpl<_$_PubPackage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PubPackageToJson(
      this,
    );
  }
}

abstract class _PubPackage extends PubPackage {
  factory _PubPackage(
      {required final String name,
      required final PackageVersion latest,
      final List<PackageVersion> versions}) = _$_PubPackage;
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
  _$$_PubPackageCopyWith<_$_PubPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageVersion _$PackageVersionFromJson(Map<String, dynamic> json) {
  return _PackageVersion.fromJson(json);
}

/// @nodoc
mixin _$PackageVersion {
  String get version => throw _privateConstructorUsedError;
  Pubspec get pubspec => throw _privateConstructorUsedError;
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
      _$PackageVersionCopyWithImpl<$Res, PackageVersion>;
  @useResult
  $Res call(
      {String version, Pubspec pubspec, String archiveUrl, DateTime published});
}

/// @nodoc
class _$PackageVersionCopyWithImpl<$Res, $Val extends PackageVersion>
    implements $PackageVersionCopyWith<$Res> {
  _$PackageVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
    Object? archiveUrl = null,
    Object? published = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
      archiveUrl: null == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageVersionCopyWith<$Res>
    implements $PackageVersionCopyWith<$Res> {
  factory _$$_PackageVersionCopyWith(
          _$_PackageVersion value, $Res Function(_$_PackageVersion) then) =
      __$$_PackageVersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version, Pubspec pubspec, String archiveUrl, DateTime published});
}

/// @nodoc
class __$$_PackageVersionCopyWithImpl<$Res>
    extends _$PackageVersionCopyWithImpl<$Res, _$_PackageVersion>
    implements _$$_PackageVersionCopyWith<$Res> {
  __$$_PackageVersionCopyWithImpl(
      _$_PackageVersion _value, $Res Function(_$_PackageVersion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
    Object? archiveUrl = null,
    Object? published = null,
  }) {
    return _then(_$_PackageVersion(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec,
      archiveUrl: null == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
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
        (other.runtimeType == runtimeType &&
            other is _$_PackageVersion &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.pubspec, pubspec) || other.pubspec == pubspec) &&
            (identical(other.archiveUrl, archiveUrl) ||
                other.archiveUrl == archiveUrl) &&
            (identical(other.published, published) ||
                other.published == published));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, version, pubspec, archiveUrl, published);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageVersionCopyWith<_$_PackageVersion> get copyWith =>
      __$$_PackageVersionCopyWithImpl<_$_PackageVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageVersionToJson(
      this,
    );
  }
}

abstract class _PackageVersion implements PackageVersion {
  factory _PackageVersion(
      {required final String version,
      required final Pubspec pubspec,
      required final String archiveUrl,
      required final DateTime published}) = _$_PackageVersion;

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
  @JsonKey(ignore: true)
  _$$_PackageVersionCopyWith<_$_PackageVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
