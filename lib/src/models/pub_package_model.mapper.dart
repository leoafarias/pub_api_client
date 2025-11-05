// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pub_package_model.dart';

class PubPackageMapper extends ClassMapperBase<PubPackage> {
  PubPackageMapper._();

  static PubPackageMapper? _instance;
  static PubPackageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PubPackageMapper._());
      MapperContainer.globals.useAll([PubspecMapper()]);
      PackageVersionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PubPackage';

  static String _$name(PubPackage v) => v.name;
  static const Field<PubPackage, String> _f$name = Field('name', _$name);
  static PackageVersion _$latest(PubPackage v) => v.latest;
  static const Field<PubPackage, PackageVersion> _f$latest = Field(
    'latest',
    _$latest,
  );
  static List<PackageVersion> _$versions(PubPackage v) => v.versions;
  static const Field<PubPackage, List<PackageVersion>> _f$versions = Field(
    'versions',
    _$versions,
    opt: true,
    def: const [],
  );
  static bool? _$isDiscontinued(PubPackage v) => v.isDiscontinued;
  static const Field<PubPackage, bool> _f$isDiscontinued = Field(
    'isDiscontinued',
    _$isDiscontinued,
    opt: true,
  );
  static String? _$replacedBy(PubPackage v) => v.replacedBy;
  static const Field<PubPackage, String> _f$replacedBy = Field(
    'replacedBy',
    _$replacedBy,
    opt: true,
  );
  static DateTime? _$advisoriesUpdated(PubPackage v) => v.advisoriesUpdated;
  static const Field<PubPackage, DateTime> _f$advisoriesUpdated = Field(
    'advisoriesUpdated',
    _$advisoriesUpdated,
    opt: true,
  );

  @override
  final MappableFields<PubPackage> fields = const {
    #name: _f$name,
    #latest: _f$latest,
    #versions: _f$versions,
    #isDiscontinued: _f$isDiscontinued,
    #replacedBy: _f$replacedBy,
    #advisoriesUpdated: _f$advisoriesUpdated,
  };

  static PubPackage _instantiate(DecodingData data) {
    return PubPackage(
      name: data.dec(_f$name),
      latest: data.dec(_f$latest),
      versions: data.dec(_f$versions),
      isDiscontinued: data.dec(_f$isDiscontinued),
      replacedBy: data.dec(_f$replacedBy),
      advisoriesUpdated: data.dec(_f$advisoriesUpdated),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PubPackage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PubPackage>(map);
  }

  static PubPackage fromJson(String json) {
    return ensureInitialized().decodeJson<PubPackage>(json);
  }
}

mixin PubPackageMappable {
  String toJson() {
    return PubPackageMapper.ensureInitialized().encodeJson<PubPackage>(
      this as PubPackage,
    );
  }

  Map<String, dynamic> toMap() {
    return PubPackageMapper.ensureInitialized().encodeMap<PubPackage>(
      this as PubPackage,
    );
  }

  PubPackageCopyWith<PubPackage, PubPackage, PubPackage> get copyWith =>
      _PubPackageCopyWithImpl<PubPackage, PubPackage>(
        this as PubPackage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PubPackageMapper.ensureInitialized().stringifyValue(
      this as PubPackage,
    );
  }

  @override
  bool operator ==(Object other) {
    return PubPackageMapper.ensureInitialized().equalsValue(
      this as PubPackage,
      other,
    );
  }

  @override
  int get hashCode {
    return PubPackageMapper.ensureInitialized().hashValue(this as PubPackage);
  }
}

extension PubPackageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PubPackage, $Out> {
  PubPackageCopyWith<$R, PubPackage, $Out> get $asPubPackage =>
      $base.as((v, t, t2) => _PubPackageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PubPackageCopyWith<$R, $In extends PubPackage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PackageVersionCopyWith<$R, PackageVersion, PackageVersion> get latest;
  ListCopyWith<
    $R,
    PackageVersion,
    PackageVersionCopyWith<$R, PackageVersion, PackageVersion>
  >
  get versions;
  $R call({
    String? name,
    PackageVersion? latest,
    List<PackageVersion>? versions,
    bool? isDiscontinued,
    String? replacedBy,
    DateTime? advisoriesUpdated,
  });
  PubPackageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PubPackageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PubPackage, $Out>
    implements PubPackageCopyWith<$R, PubPackage, $Out> {
  _PubPackageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PubPackage> $mapper =
      PubPackageMapper.ensureInitialized();
  @override
  PackageVersionCopyWith<$R, PackageVersion, PackageVersion> get latest =>
      $value.latest.copyWith.$chain((v) => call(latest: v));
  @override
  ListCopyWith<
    $R,
    PackageVersion,
    PackageVersionCopyWith<$R, PackageVersion, PackageVersion>
  >
  get versions => ListCopyWith(
    $value.versions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(versions: v),
  );
  @override
  $R call({
    String? name,
    PackageVersion? latest,
    List<PackageVersion>? versions,
    Object? isDiscontinued = $none,
    Object? replacedBy = $none,
    Object? advisoriesUpdated = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (latest != null) #latest: latest,
      if (versions != null) #versions: versions,
      if (isDiscontinued != $none) #isDiscontinued: isDiscontinued,
      if (replacedBy != $none) #replacedBy: replacedBy,
      if (advisoriesUpdated != $none) #advisoriesUpdated: advisoriesUpdated,
    }),
  );
  @override
  PubPackage $make(CopyWithData data) => PubPackage(
    name: data.get(#name, or: $value.name),
    latest: data.get(#latest, or: $value.latest),
    versions: data.get(#versions, or: $value.versions),
    isDiscontinued: data.get(#isDiscontinued, or: $value.isDiscontinued),
    replacedBy: data.get(#replacedBy, or: $value.replacedBy),
    advisoriesUpdated: data.get(
      #advisoriesUpdated,
      or: $value.advisoriesUpdated,
    ),
  );

  @override
  PubPackageCopyWith<$R2, PubPackage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PubPackageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PackageVersionMapper extends ClassMapperBase<PackageVersion> {
  PackageVersionMapper._();

  static PackageVersionMapper? _instance;
  static PackageVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageVersionMapper._());
      MapperContainer.globals.useAll([PubspecMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'PackageVersion';

  static String _$version(PackageVersion v) => v.version;
  static const Field<PackageVersion, String> _f$version = Field(
    'version',
    _$version,
  );
  static Pubspec _$pubspec(PackageVersion v) => v.pubspec;
  static const Field<PackageVersion, Pubspec> _f$pubspec = Field(
    'pubspec',
    _$pubspec,
  );
  static String _$archiveUrl(PackageVersion v) => v.archiveUrl;
  static const Field<PackageVersion, String> _f$archiveUrl = Field(
    'archiveUrl',
    _$archiveUrl,
    key: r'archive_url',
  );
  static DateTime _$published(PackageVersion v) => v.published;
  static const Field<PackageVersion, DateTime> _f$published = Field(
    'published',
    _$published,
  );
  static String _$archiveSha256(PackageVersion v) => v.archiveSha256;
  static const Field<PackageVersion, String> _f$archiveSha256 = Field(
    'archiveSha256',
    _$archiveSha256,
    key: r'archive_sha256',
  );
  static bool _$retracted(PackageVersion v) => v.retracted;
  static const Field<PackageVersion, bool> _f$retracted = Field(
    'retracted',
    _$retracted,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<PackageVersion> fields = const {
    #version: _f$version,
    #pubspec: _f$pubspec,
    #archiveUrl: _f$archiveUrl,
    #published: _f$published,
    #archiveSha256: _f$archiveSha256,
    #retracted: _f$retracted,
  };

  static PackageVersion _instantiate(DecodingData data) {
    return PackageVersion(
      version: data.dec(_f$version),
      pubspec: data.dec(_f$pubspec),
      archiveUrl: data.dec(_f$archiveUrl),
      published: data.dec(_f$published),
      archiveSha256: data.dec(_f$archiveSha256),
      retracted: data.dec(_f$retracted),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PackageVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageVersion>(map);
  }

  static PackageVersion fromJson(String json) {
    return ensureInitialized().decodeJson<PackageVersion>(json);
  }
}

mixin PackageVersionMappable {
  String toJson() {
    return PackageVersionMapper.ensureInitialized().encodeJson<PackageVersion>(
      this as PackageVersion,
    );
  }

  Map<String, dynamic> toMap() {
    return PackageVersionMapper.ensureInitialized().encodeMap<PackageVersion>(
      this as PackageVersion,
    );
  }

  PackageVersionCopyWith<PackageVersion, PackageVersion, PackageVersion>
  get copyWith => _PackageVersionCopyWithImpl<PackageVersion, PackageVersion>(
    this as PackageVersion,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PackageVersionMapper.ensureInitialized().stringifyValue(
      this as PackageVersion,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageVersionMapper.ensureInitialized().equalsValue(
      this as PackageVersion,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageVersionMapper.ensureInitialized().hashValue(
      this as PackageVersion,
    );
  }
}

extension PackageVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageVersion, $Out> {
  PackageVersionCopyWith<$R, PackageVersion, $Out> get $asPackageVersion =>
      $base.as((v, t, t2) => _PackageVersionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PackageVersionCopyWith<$R, $In extends PackageVersion, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? version,
    Pubspec? pubspec,
    String? archiveUrl,
    DateTime? published,
    String? archiveSha256,
    bool? retracted,
  });
  PackageVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PackageVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageVersion, $Out>
    implements PackageVersionCopyWith<$R, PackageVersion, $Out> {
  _PackageVersionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageVersion> $mapper =
      PackageVersionMapper.ensureInitialized();
  @override
  $R call({
    String? version,
    Pubspec? pubspec,
    String? archiveUrl,
    DateTime? published,
    String? archiveSha256,
    bool? retracted,
  }) => $apply(
    FieldCopyWithData({
      if (version != null) #version: version,
      if (pubspec != null) #pubspec: pubspec,
      if (archiveUrl != null) #archiveUrl: archiveUrl,
      if (published != null) #published: published,
      if (archiveSha256 != null) #archiveSha256: archiveSha256,
      if (retracted != null) #retracted: retracted,
    }),
  );
  @override
  PackageVersion $make(CopyWithData data) => PackageVersion(
    version: data.get(#version, or: $value.version),
    pubspec: data.get(#pubspec, or: $value.pubspec),
    archiveUrl: data.get(#archiveUrl, or: $value.archiveUrl),
    published: data.get(#published, or: $value.published),
    archiveSha256: data.get(#archiveSha256, or: $value.archiveSha256),
    retracted: data.get(#retracted, or: $value.retracted),
  );

  @override
  PackageVersionCopyWith<$R2, PackageVersion, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PackageVersionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

