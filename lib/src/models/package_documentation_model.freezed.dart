// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_documentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageDocumentation _$PackageDocumentationFromJson(Map<String, dynamic> json) {
  return _PackageDocumentation.fromJson(json);
}

/// @nodoc
class _$PackageDocumentationTearOff {
  const _$PackageDocumentationTearOff();

  _PackageDocumentation call(
      {required String name,
      required String latestStableVersion,
      List<PackageDocumentationVersion> versions = const []}) {
    return _PackageDocumentation(
      name: name,
      latestStableVersion: latestStableVersion,
      versions: versions,
    );
  }

  PackageDocumentation fromJson(Map<String, Object?> json) {
    return PackageDocumentation.fromJson(json);
  }
}

/// @nodoc
const $PackageDocumentation = _$PackageDocumentationTearOff();

/// @nodoc
mixin _$PackageDocumentation {
  String get name => throw _privateConstructorUsedError;
  String get latestStableVersion => throw _privateConstructorUsedError;
  List<PackageDocumentationVersion> get versions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDocumentationCopyWith<PackageDocumentation> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? name = freezed,
    Object? latestStableVersion = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latestStableVersion: latestStableVersion == freezed
          ? _value.latestStableVersion
          : latestStableVersion // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageDocumentationVersion>,
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
    Object? name = freezed,
    Object? latestStableVersion = freezed,
    Object? versions = freezed,
  }) {
    return _then(_PackageDocumentation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latestStableVersion: latestStableVersion == freezed
          ? _value.latestStableVersion
          : latestStableVersion // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<PackageDocumentationVersion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageDocumentation implements _PackageDocumentation {
  _$_PackageDocumentation(
      {required this.name,
      required this.latestStableVersion,
      this.versions = const []});

  factory _$_PackageDocumentation.fromJson(Map<String, dynamic> json) =>
      _$$_PackageDocumentationFromJson(json);

  @override
  final String name;
  @override
  final String latestStableVersion;
  @JsonKey()
  @override
  final List<PackageDocumentationVersion> versions;

  @override
  String toString() {
    return 'PackageDocumentation(name: $name, latestStableVersion: $latestStableVersion, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageDocumentation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.latestStableVersion, latestStableVersion) &&
            const DeepCollectionEquality().equals(other.versions, versions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latestStableVersion),
      const DeepCollectionEquality().hash(versions));

  @JsonKey(ignore: true)
  @override
  _$PackageDocumentationCopyWith<_PackageDocumentation> get copyWith =>
      __$PackageDocumentationCopyWithImpl<_PackageDocumentation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageDocumentationToJson(this);
  }
}

abstract class _PackageDocumentation implements PackageDocumentation {
  factory _PackageDocumentation(
      {required String name,
      required String latestStableVersion,
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
  @JsonKey(ignore: true)
  _$PackageDocumentationCopyWith<_PackageDocumentation> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageDocumentationVersion _$PackageDocumentationVersionFromJson(
    Map<String, dynamic> json) {
  return _PackageDocumentationVersion.fromJson(json);
}

/// @nodoc
class _$PackageDocumentationVersionTearOff {
  const _$PackageDocumentationVersionTearOff();

  _PackageDocumentationVersion call(
      {required String version,
      required String status,
      required bool hasDocumentation}) {
    return _PackageDocumentationVersion(
      version: version,
      status: status,
      hasDocumentation: hasDocumentation,
    );
  }

  PackageDocumentationVersion fromJson(Map<String, Object?> json) {
    return PackageDocumentationVersion.fromJson(json);
  }
}

/// @nodoc
const $PackageDocumentationVersion = _$PackageDocumentationVersionTearOff();

/// @nodoc
mixin _$PackageDocumentationVersion {
  String get version => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get hasDocumentation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDocumentationVersionCopyWith<PackageDocumentationVersion>
      get copyWith => throw _privateConstructorUsedError;
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
    Object? version = freezed,
    Object? status = freezed,
    Object? hasDocumentation = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasDocumentation: hasDocumentation == freezed
          ? _value.hasDocumentation
          : hasDocumentation // ignore: cast_nullable_to_non_nullable
              as bool,
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
    Object? version = freezed,
    Object? status = freezed,
    Object? hasDocumentation = freezed,
  }) {
    return _then(_PackageDocumentationVersion(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasDocumentation: hasDocumentation == freezed
          ? _value.hasDocumentation
          : hasDocumentation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageDocumentationVersion implements _PackageDocumentationVersion {
  _$_PackageDocumentationVersion(
      {required this.version,
      required this.status,
      required this.hasDocumentation});

  factory _$_PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =>
      _$$_PackageDocumentationVersionFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _PackageDocumentationVersion &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.hasDocumentation, hasDocumentation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(hasDocumentation));

  @JsonKey(ignore: true)
  @override
  _$PackageDocumentationVersionCopyWith<_PackageDocumentationVersion>
      get copyWith => __$PackageDocumentationVersionCopyWithImpl<
          _PackageDocumentationVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageDocumentationVersionToJson(this);
  }
}

abstract class _PackageDocumentationVersion
    implements PackageDocumentationVersion {
  factory _PackageDocumentationVersion(
      {required String version,
      required String status,
      required bool hasDocumentation}) = _$_PackageDocumentationVersion;

  factory _PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =
      _$_PackageDocumentationVersion.fromJson;

  @override
  String get version;
  @override
  String get status;
  @override
  bool get hasDocumentation;
  @override
  @JsonKey(ignore: true)
  _$PackageDocumentationVersionCopyWith<_PackageDocumentationVersion>
      get copyWith => throw _privateConstructorUsedError;
}
