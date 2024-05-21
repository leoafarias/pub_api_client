// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_documentation_model.dart';

class PackageDocumentationMapper extends ClassMapperBase<PackageDocumentation> {
  PackageDocumentationMapper._();

  static PackageDocumentationMapper? _instance;
  static PackageDocumentationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageDocumentationMapper._());
      PackageDocumentationVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PackageDocumentation';

  static String _$name(PackageDocumentation v) => v.name;
  static const Field<PackageDocumentation, String> _f$name =
      Field('name', _$name);
  static List<PackageDocumentationVersion> _$versions(PackageDocumentation v) =>
      v.versions;
  static const Field<PackageDocumentation, List<PackageDocumentationVersion>>
      _f$versions = Field('versions', _$versions, opt: true, def: const []);

  @override
  final MappableFields<PackageDocumentation> fields = const {
    #name: _f$name,
    #versions: _f$versions,
  };

  static PackageDocumentation _instantiate(DecodingData data) {
    return PackageDocumentation(
        name: data.dec(_f$name), versions: data.dec(_f$versions));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageDocumentation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageDocumentation>(map);
  }

  static PackageDocumentation fromJson(String json) {
    return ensureInitialized().decodeJson<PackageDocumentation>(json);
  }
}

mixin PackageDocumentationMappable {
  String toJson() {
    return PackageDocumentationMapper.ensureInitialized()
        .encodeJson<PackageDocumentation>(this as PackageDocumentation);
  }

  Map<String, dynamic> toMap() {
    return PackageDocumentationMapper.ensureInitialized()
        .encodeMap<PackageDocumentation>(this as PackageDocumentation);
  }

  PackageDocumentationCopyWith<PackageDocumentation, PackageDocumentation,
          PackageDocumentation>
      get copyWith => _PackageDocumentationCopyWithImpl(
          this as PackageDocumentation, $identity, $identity);
  @override
  String toString() {
    return PackageDocumentationMapper.ensureInitialized()
        .stringifyValue(this as PackageDocumentation);
  }

  @override
  bool operator ==(Object other) {
    return PackageDocumentationMapper.ensureInitialized()
        .equalsValue(this as PackageDocumentation, other);
  }

  @override
  int get hashCode {
    return PackageDocumentationMapper.ensureInitialized()
        .hashValue(this as PackageDocumentation);
  }
}

extension PackageDocumentationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageDocumentation, $Out> {
  PackageDocumentationCopyWith<$R, PackageDocumentation, $Out>
      get $asPackageDocumentation =>
          $base.as((v, t, t2) => _PackageDocumentationCopyWithImpl(v, t, t2));
}

abstract class PackageDocumentationCopyWith<
    $R,
    $In extends PackageDocumentation,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      PackageDocumentationVersion,
      PackageDocumentationVersionCopyWith<$R, PackageDocumentationVersion,
          PackageDocumentationVersion>> get versions;
  $R call({String? name, List<PackageDocumentationVersion>? versions});
  PackageDocumentationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PackageDocumentationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageDocumentation, $Out>
    implements PackageDocumentationCopyWith<$R, PackageDocumentation, $Out> {
  _PackageDocumentationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageDocumentation> $mapper =
      PackageDocumentationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      PackageDocumentationVersion,
      PackageDocumentationVersionCopyWith<$R, PackageDocumentationVersion,
          PackageDocumentationVersion>> get versions => ListCopyWith(
      $value.versions,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(versions: v));
  @override
  $R call({String? name, List<PackageDocumentationVersion>? versions}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (versions != null) #versions: versions
      }));
  @override
  PackageDocumentation $make(CopyWithData data) => PackageDocumentation(
      name: data.get(#name, or: $value.name),
      versions: data.get(#versions, or: $value.versions));

  @override
  PackageDocumentationCopyWith<$R2, PackageDocumentation, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PackageDocumentationCopyWithImpl($value, $cast, t);
}

class PackageDocumentationVersionMapper
    extends ClassMapperBase<PackageDocumentationVersion> {
  PackageDocumentationVersionMapper._();

  static PackageDocumentationVersionMapper? _instance;
  static PackageDocumentationVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PackageDocumentationVersionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageDocumentationVersion';

  static String _$version(PackageDocumentationVersion v) => v.version;
  static const Field<PackageDocumentationVersion, String> _f$version =
      Field('version', _$version);
  static String _$status(PackageDocumentationVersion v) => v.status;
  static const Field<PackageDocumentationVersion, String> _f$status =
      Field('status', _$status);
  static bool _$hasDocumentation(PackageDocumentationVersion v) =>
      v.hasDocumentation;
  static const Field<PackageDocumentationVersion, bool> _f$hasDocumentation =
      Field('hasDocumentation', _$hasDocumentation);

  @override
  final MappableFields<PackageDocumentationVersion> fields = const {
    #version: _f$version,
    #status: _f$status,
    #hasDocumentation: _f$hasDocumentation,
  };

  static PackageDocumentationVersion _instantiate(DecodingData data) {
    return PackageDocumentationVersion(
        version: data.dec(_f$version),
        status: data.dec(_f$status),
        hasDocumentation: data.dec(_f$hasDocumentation));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageDocumentationVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageDocumentationVersion>(map);
  }

  static PackageDocumentationVersion fromJson(String json) {
    return ensureInitialized().decodeJson<PackageDocumentationVersion>(json);
  }
}

mixin PackageDocumentationVersionMappable {
  String toJson() {
    return PackageDocumentationVersionMapper.ensureInitialized()
        .encodeJson<PackageDocumentationVersion>(
            this as PackageDocumentationVersion);
  }

  Map<String, dynamic> toMap() {
    return PackageDocumentationVersionMapper.ensureInitialized()
        .encodeMap<PackageDocumentationVersion>(
            this as PackageDocumentationVersion);
  }

  PackageDocumentationVersionCopyWith<PackageDocumentationVersion,
          PackageDocumentationVersion, PackageDocumentationVersion>
      get copyWith => _PackageDocumentationVersionCopyWithImpl(
          this as PackageDocumentationVersion, $identity, $identity);
  @override
  String toString() {
    return PackageDocumentationVersionMapper.ensureInitialized()
        .stringifyValue(this as PackageDocumentationVersion);
  }

  @override
  bool operator ==(Object other) {
    return PackageDocumentationVersionMapper.ensureInitialized()
        .equalsValue(this as PackageDocumentationVersion, other);
  }

  @override
  int get hashCode {
    return PackageDocumentationVersionMapper.ensureInitialized()
        .hashValue(this as PackageDocumentationVersion);
  }
}

extension PackageDocumentationVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageDocumentationVersion, $Out> {
  PackageDocumentationVersionCopyWith<$R, PackageDocumentationVersion, $Out>
      get $asPackageDocumentationVersion => $base
          .as((v, t, t2) => _PackageDocumentationVersionCopyWithImpl(v, t, t2));
}

abstract class PackageDocumentationVersionCopyWith<
    $R,
    $In extends PackageDocumentationVersion,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? version, String? status, bool? hasDocumentation});
  PackageDocumentationVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PackageDocumentationVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageDocumentationVersion, $Out>
    implements
        PackageDocumentationVersionCopyWith<$R, PackageDocumentationVersion,
            $Out> {
  _PackageDocumentationVersionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageDocumentationVersion> $mapper =
      PackageDocumentationVersionMapper.ensureInitialized();
  @override
  $R call({String? version, String? status, bool? hasDocumentation}) =>
      $apply(FieldCopyWithData({
        if (version != null) #version: version,
        if (status != null) #status: status,
        if (hasDocumentation != null) #hasDocumentation: hasDocumentation
      }));
  @override
  PackageDocumentationVersion $make(CopyWithData data) =>
      PackageDocumentationVersion(
          version: data.get(#version, or: $value.version),
          status: data.get(#status, or: $value.status),
          hasDocumentation:
              data.get(#hasDocumentation, or: $value.hasDocumentation));

  @override
  PackageDocumentationVersionCopyWith<$R2, PackageDocumentationVersion, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PackageDocumentationVersionCopyWithImpl($value, $cast, t);
}
