// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
abstract class _$$PubPackageImplCopyWith<$Res>
    implements $PubPackageCopyWith<$Res> {
  factory _$$PubPackageImplCopyWith(
          _$PubPackageImpl value, $Res Function(_$PubPackageImpl) then) =
      __$$PubPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, PackageVersion latest, List<PackageVersion> versions});

  @override
  $PackageVersionCopyWith<$Res> get latest;
}

/// @nodoc
class __$$PubPackageImplCopyWithImpl<$Res>
    extends _$PubPackageCopyWithImpl<$Res, _$PubPackageImpl>
    implements _$$PubPackageImplCopyWith<$Res> {
  __$$PubPackageImplCopyWithImpl(
      _$PubPackageImpl _value, $Res Function(_$PubPackageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latest = null,
    Object? versions = null,
  }) {
    return _then(_$PubPackageImpl(
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
class _$PubPackageImpl extends _PubPackage {
  const _$PubPackageImpl(
      {required this.name,
      required this.latest,
      required final List<PackageVersion> versions})
      : _versions = versions,
        super._();

  factory _$PubPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubPackageImplFromJson(json);

  @override
  final String name;
  @override
  final PackageVersion latest;
  final List<PackageVersion> _versions;
  @override
  List<PackageVersion> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
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
            other is _$PubPackageImpl &&
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
  _$$PubPackageImplCopyWith<_$PubPackageImpl> get copyWith =>
      __$$PubPackageImplCopyWithImpl<_$PubPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubPackageImplToJson(
      this,
    );
  }
}

abstract class _PubPackage extends PubPackage {
  const factory _PubPackage(
      {required final String name,
      required final PackageVersion latest,
      required final List<PackageVersion> versions}) = _$PubPackageImpl;
  const _PubPackage._() : super._();

  factory _PubPackage.fromJson(Map<String, dynamic> json) =
      _$PubPackageImpl.fromJson;

  @override
  String get name;
  @override
  PackageVersion get latest;
  @override
  List<PackageVersion> get versions;
  @override
  @JsonKey(ignore: true)
  _$$PubPackageImplCopyWith<_$PubPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageVersion _$PackageVersionFromJson(Map<String, dynamic> json) {
  return _PackageVersion.fromJson(json);
}

/// @nodoc
mixin _$PackageVersion {
  String get version => throw _privateConstructorUsedError;
  PubSpec get pubspec => throw _privateConstructorUsedError;
  String? get archiveUrl => throw _privateConstructorUsedError;
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
      {String version,
      PubSpec pubspec,
      String? archiveUrl,
      DateTime published});
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
    Object? archiveUrl = freezed,
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
              as PubSpec,
      archiveUrl: freezed == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageVersionImplCopyWith<$Res>
    implements $PackageVersionCopyWith<$Res> {
  factory _$$PackageVersionImplCopyWith(_$PackageVersionImpl value,
          $Res Function(_$PackageVersionImpl) then) =
      __$$PackageVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      PubSpec pubspec,
      String? archiveUrl,
      DateTime published});
}

/// @nodoc
class __$$PackageVersionImplCopyWithImpl<$Res>
    extends _$PackageVersionCopyWithImpl<$Res, _$PackageVersionImpl>
    implements _$$PackageVersionImplCopyWith<$Res> {
  __$$PackageVersionImplCopyWithImpl(
      _$PackageVersionImpl _value, $Res Function(_$PackageVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? pubspec = null,
    Object? archiveUrl = freezed,
    Object? published = null,
  }) {
    return _then(_$PackageVersionImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: null == pubspec
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as PubSpec,
      archiveUrl: freezed == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageVersionImpl implements _PackageVersion {
  const _$PackageVersionImpl(
      {required this.version,
      required this.pubspec,
      this.archiveUrl,
      required this.published});

  factory _$PackageVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageVersionImplFromJson(json);

  @override
  final String version;
  @override
  final PubSpec pubspec;
  @override
  final String? archiveUrl;
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
            other is _$PackageVersionImpl &&
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
  _$$PackageVersionImplCopyWith<_$PackageVersionImpl> get copyWith =>
      __$$PackageVersionImplCopyWithImpl<_$PackageVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageVersionImplToJson(
      this,
    );
  }
}

abstract class _PackageVersion implements PackageVersion {
  const factory _PackageVersion(
      {required final String version,
      required final PubSpec pubspec,
      final String? archiveUrl,
      required final DateTime published}) = _$PackageVersionImpl;

  factory _PackageVersion.fromJson(Map<String, dynamic> json) =
      _$PackageVersionImpl.fromJson;

  @override
  String get version;
  @override
  PubSpec get pubspec;
  @override
  String? get archiveUrl;
  @override
  DateTime get published;
  @override
  @JsonKey(ignore: true)
  _$$PackageVersionImplCopyWith<_$PackageVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
