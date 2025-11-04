// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_advisories_model.dart';

class PackageAdvisoriesMapper extends ClassMapperBase<PackageAdvisories> {
  PackageAdvisoriesMapper._();

  static PackageAdvisoriesMapper? _instance;
  static PackageAdvisoriesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageAdvisoriesMapper._());
      SecurityAdvisoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PackageAdvisories';

  static List<SecurityAdvisory> _$advisories(PackageAdvisories v) =>
      v.advisories;
  static const Field<PackageAdvisories, List<SecurityAdvisory>> _f$advisories =
      Field('advisories', _$advisories);
  static DateTime? _$advisoriesUpdated(PackageAdvisories v) =>
      v.advisoriesUpdated;
  static const Field<PackageAdvisories, DateTime> _f$advisoriesUpdated = Field(
    'advisoriesUpdated',
    _$advisoriesUpdated,
    opt: true,
  );

  @override
  final MappableFields<PackageAdvisories> fields = const {
    #advisories: _f$advisories,
    #advisoriesUpdated: _f$advisoriesUpdated,
  };

  static PackageAdvisories _instantiate(DecodingData data) {
    return PackageAdvisories(
      advisories: data.dec(_f$advisories),
      advisoriesUpdated: data.dec(_f$advisoriesUpdated),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PackageAdvisories fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageAdvisories>(map);
  }

  static PackageAdvisories fromJson(String json) {
    return ensureInitialized().decodeJson<PackageAdvisories>(json);
  }
}

mixin PackageAdvisoriesMappable {
  String toJson() {
    return PackageAdvisoriesMapper.ensureInitialized()
        .encodeJson<PackageAdvisories>(this as PackageAdvisories);
  }

  Map<String, dynamic> toMap() {
    return PackageAdvisoriesMapper.ensureInitialized()
        .encodeMap<PackageAdvisories>(this as PackageAdvisories);
  }

  PackageAdvisoriesCopyWith<PackageAdvisories, PackageAdvisories,
          PackageAdvisories>
      get copyWith =>
          _PackageAdvisoriesCopyWithImpl<PackageAdvisories, PackageAdvisories>(
            this as PackageAdvisories,
            $identity,
            $identity,
          );
  @override
  String toString() {
    return PackageAdvisoriesMapper.ensureInitialized().stringifyValue(
      this as PackageAdvisories,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageAdvisoriesMapper.ensureInitialized().equalsValue(
      this as PackageAdvisories,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageAdvisoriesMapper.ensureInitialized().hashValue(
      this as PackageAdvisories,
    );
  }
}

extension PackageAdvisoriesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageAdvisories, $Out> {
  PackageAdvisoriesCopyWith<$R, PackageAdvisories, $Out>
      get $asPackageAdvisories => $base.as(
            (v, t, t2) => _PackageAdvisoriesCopyWithImpl<$R, $Out>(v, t, t2),
          );
}

abstract class PackageAdvisoriesCopyWith<$R, $In extends PackageAdvisories,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SecurityAdvisory,
          SecurityAdvisoryCopyWith<$R, SecurityAdvisory, SecurityAdvisory>>
      get advisories;
  $R call({List<SecurityAdvisory>? advisories, DateTime? advisoriesUpdated});
  PackageAdvisoriesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PackageAdvisoriesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageAdvisories, $Out>
    implements PackageAdvisoriesCopyWith<$R, PackageAdvisories, $Out> {
  _PackageAdvisoriesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageAdvisories> $mapper =
      PackageAdvisoriesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SecurityAdvisory,
          SecurityAdvisoryCopyWith<$R, SecurityAdvisory, SecurityAdvisory>>
      get advisories => ListCopyWith(
            $value.advisories,
            (v, t) => v.copyWith.$chain(t),
            (v) => call(advisories: v),
          );
  @override
  $R call({
    List<SecurityAdvisory>? advisories,
    Object? advisoriesUpdated = $none,
  }) =>
      $apply(
        FieldCopyWithData({
          if (advisories != null) #advisories: advisories,
          if (advisoriesUpdated != $none) #advisoriesUpdated: advisoriesUpdated,
        }),
      );
  @override
  PackageAdvisories $make(CopyWithData data) => PackageAdvisories(
        advisories: data.get(#advisories, or: $value.advisories),
        advisoriesUpdated: data.get(
          #advisoriesUpdated,
          or: $value.advisoriesUpdated,
        ),
      );

  @override
  PackageAdvisoriesCopyWith<$R2, PackageAdvisories, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _PackageAdvisoriesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SecurityAdvisoryMapper extends ClassMapperBase<SecurityAdvisory> {
  SecurityAdvisoryMapper._();

  static SecurityAdvisoryMapper? _instance;
  static SecurityAdvisoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SecurityAdvisoryMapper._());
      AffectedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SecurityAdvisory';

  static String _$id(SecurityAdvisory v) => v.id;
  static const Field<SecurityAdvisory, String> _f$id = Field('id', _$id);
  static String? _$summary(SecurityAdvisory v) => v.summary;
  static const Field<SecurityAdvisory, String> _f$summary = Field(
    'summary',
    _$summary,
    opt: true,
  );
  static String? _$details(SecurityAdvisory v) => v.details;
  static const Field<SecurityAdvisory, String> _f$details = Field(
    'details',
    _$details,
    opt: true,
  );
  static List<Affected>? _$affected(SecurityAdvisory v) => v.affected;
  static const Field<SecurityAdvisory, List<Affected>> _f$affected = Field(
    'affected',
    _$affected,
    opt: true,
  );
  static Map<String, dynamic>? _$databaseSpecific(SecurityAdvisory v) =>
      v.databaseSpecific;
  static const Field<SecurityAdvisory, Map<String, dynamic>>
      _f$databaseSpecific = Field(
    'databaseSpecific',
    _$databaseSpecific,
    key: r'database_specific',
    opt: true,
  );

  @override
  final MappableFields<SecurityAdvisory> fields = const {
    #id: _f$id,
    #summary: _f$summary,
    #details: _f$details,
    #affected: _f$affected,
    #databaseSpecific: _f$databaseSpecific,
  };

  static SecurityAdvisory _instantiate(DecodingData data) {
    return SecurityAdvisory(
      id: data.dec(_f$id),
      summary: data.dec(_f$summary),
      details: data.dec(_f$details),
      affected: data.dec(_f$affected),
      databaseSpecific: data.dec(_f$databaseSpecific),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SecurityAdvisory fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SecurityAdvisory>(map);
  }

  static SecurityAdvisory fromJson(String json) {
    return ensureInitialized().decodeJson<SecurityAdvisory>(json);
  }
}

mixin SecurityAdvisoryMappable {
  String toJson() {
    return SecurityAdvisoryMapper.ensureInitialized()
        .encodeJson<SecurityAdvisory>(this as SecurityAdvisory);
  }

  Map<String, dynamic> toMap() {
    return SecurityAdvisoryMapper.ensureInitialized()
        .encodeMap<SecurityAdvisory>(this as SecurityAdvisory);
  }

  SecurityAdvisoryCopyWith<SecurityAdvisory, SecurityAdvisory, SecurityAdvisory>
      get copyWith =>
          _SecurityAdvisoryCopyWithImpl<SecurityAdvisory, SecurityAdvisory>(
            this as SecurityAdvisory,
            $identity,
            $identity,
          );
  @override
  String toString() {
    return SecurityAdvisoryMapper.ensureInitialized().stringifyValue(
      this as SecurityAdvisory,
    );
  }

  @override
  bool operator ==(Object other) {
    return SecurityAdvisoryMapper.ensureInitialized().equalsValue(
      this as SecurityAdvisory,
      other,
    );
  }

  @override
  int get hashCode {
    return SecurityAdvisoryMapper.ensureInitialized().hashValue(
      this as SecurityAdvisory,
    );
  }
}

extension SecurityAdvisoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SecurityAdvisory, $Out> {
  SecurityAdvisoryCopyWith<$R, SecurityAdvisory, $Out>
      get $asSecurityAdvisory => $base
          .as((v, t, t2) => _SecurityAdvisoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SecurityAdvisoryCopyWith<$R, $In extends SecurityAdvisory, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Affected, AffectedCopyWith<$R, Affected, Affected>>?
      get affected;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get databaseSpecific;
  $R call({
    String? id,
    String? summary,
    String? details,
    List<Affected>? affected,
    Map<String, dynamic>? databaseSpecific,
  });
  SecurityAdvisoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SecurityAdvisoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SecurityAdvisory, $Out>
    implements SecurityAdvisoryCopyWith<$R, SecurityAdvisory, $Out> {
  _SecurityAdvisoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SecurityAdvisory> $mapper =
      SecurityAdvisoryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Affected, AffectedCopyWith<$R, Affected, Affected>>?
      get affected => $value.affected != null
          ? ListCopyWith(
              $value.affected!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(affected: v),
            )
          : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get databaseSpecific => $value.databaseSpecific != null
          ? MapCopyWith(
              $value.databaseSpecific!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(databaseSpecific: v),
            )
          : null;
  @override
  $R call({
    String? id,
    Object? summary = $none,
    Object? details = $none,
    Object? affected = $none,
    Object? databaseSpecific = $none,
  }) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (summary != $none) #summary: summary,
          if (details != $none) #details: details,
          if (affected != $none) #affected: affected,
          if (databaseSpecific != $none) #databaseSpecific: databaseSpecific,
        }),
      );
  @override
  SecurityAdvisory $make(CopyWithData data) => SecurityAdvisory(
        id: data.get(#id, or: $value.id),
        summary: data.get(#summary, or: $value.summary),
        details: data.get(#details, or: $value.details),
        affected: data.get(#affected, or: $value.affected),
        databaseSpecific:
            data.get(#databaseSpecific, or: $value.databaseSpecific),
      );

  @override
  SecurityAdvisoryCopyWith<$R2, SecurityAdvisory, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _SecurityAdvisoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AffectedMapper extends ClassMapperBase<Affected> {
  AffectedMapper._();

  static AffectedMapper? _instance;
  static AffectedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AffectedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Affected';

  static List<String>? _$versions(Affected v) => v.versions;
  static const Field<Affected, List<String>> _f$versions = Field(
    'versions',
    _$versions,
    opt: true,
  );

  @override
  final MappableFields<Affected> fields = const {#versions: _f$versions};

  static Affected _instantiate(DecodingData data) {
    return Affected(versions: data.dec(_f$versions));
  }

  @override
  final Function instantiate = _instantiate;

  static Affected fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Affected>(map);
  }

  static Affected fromJson(String json) {
    return ensureInitialized().decodeJson<Affected>(json);
  }
}

mixin AffectedMappable {
  String toJson() {
    return AffectedMapper.ensureInitialized().encodeJson<Affected>(
      this as Affected,
    );
  }

  Map<String, dynamic> toMap() {
    return AffectedMapper.ensureInitialized().encodeMap<Affected>(
      this as Affected,
    );
  }

  AffectedCopyWith<Affected, Affected, Affected> get copyWith =>
      _AffectedCopyWithImpl<Affected, Affected>(
        this as Affected,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AffectedMapper.ensureInitialized().stringifyValue(this as Affected);
  }

  @override
  bool operator ==(Object other) {
    return AffectedMapper.ensureInitialized().equalsValue(
      this as Affected,
      other,
    );
  }

  @override
  int get hashCode {
    return AffectedMapper.ensureInitialized().hashValue(this as Affected);
  }
}

extension AffectedValueCopy<$R, $Out> on ObjectCopyWith<$R, Affected, $Out> {
  AffectedCopyWith<$R, Affected, $Out> get $asAffected =>
      $base.as((v, t, t2) => _AffectedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AffectedCopyWith<$R, $In extends Affected, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get versions;
  $R call({List<String>? versions});
  AffectedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AffectedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Affected, $Out>
    implements AffectedCopyWith<$R, Affected, $Out> {
  _AffectedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Affected> $mapper =
      AffectedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get versions =>
      $value.versions != null
          ? ListCopyWith(
              $value.versions!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(versions: v),
            )
          : null;
  @override
  $R call({Object? versions = $none}) =>
      $apply(FieldCopyWithData({if (versions != $none) #versions: versions}));
  @override
  Affected $make(CopyWithData data) =>
      Affected(versions: data.get(#versions, or: $value.versions));

  @override
  AffectedCopyWith<$R2, Affected, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _AffectedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
