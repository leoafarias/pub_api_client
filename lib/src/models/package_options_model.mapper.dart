// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_options_model.dart';

class PackageOptionsMapper extends ClassMapperBase<PackageOptions> {
  PackageOptionsMapper._();

  static PackageOptionsMapper? _instance;
  static PackageOptionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageOptionsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageOptions';

  static bool _$isDiscontinued(PackageOptions v) => v.isDiscontinued;
  static const Field<PackageOptions, bool> _f$isDiscontinued = Field(
    'isDiscontinued',
    _$isDiscontinued,
    opt: true,
    def: false,
  );
  static bool _$isUnlisted(PackageOptions v) => v.isUnlisted;
  static const Field<PackageOptions, bool> _f$isUnlisted = Field(
    'isUnlisted',
    _$isUnlisted,
    opt: true,
    def: false,
  );
  static String? _$replacedBy(PackageOptions v) => v.replacedBy;
  static const Field<PackageOptions, String> _f$replacedBy = Field(
    'replacedBy',
    _$replacedBy,
    opt: true,
  );

  @override
  final MappableFields<PackageOptions> fields = const {
    #isDiscontinued: _f$isDiscontinued,
    #isUnlisted: _f$isUnlisted,
    #replacedBy: _f$replacedBy,
  };

  static PackageOptions _instantiate(DecodingData data) {
    return PackageOptions(
      isDiscontinued: data.dec(_f$isDiscontinued),
      isUnlisted: data.dec(_f$isUnlisted),
      replacedBy: data.dec(_f$replacedBy),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PackageOptions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageOptions>(map);
  }

  static PackageOptions fromJson(String json) {
    return ensureInitialized().decodeJson<PackageOptions>(json);
  }
}

mixin PackageOptionsMappable {
  String toJson() {
    return PackageOptionsMapper.ensureInitialized().encodeJson<PackageOptions>(
      this as PackageOptions,
    );
  }

  Map<String, dynamic> toMap() {
    return PackageOptionsMapper.ensureInitialized().encodeMap<PackageOptions>(
      this as PackageOptions,
    );
  }

  PackageOptionsCopyWith<PackageOptions, PackageOptions, PackageOptions>
  get copyWith => _PackageOptionsCopyWithImpl<PackageOptions, PackageOptions>(
    this as PackageOptions,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PackageOptionsMapper.ensureInitialized().stringifyValue(
      this as PackageOptions,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageOptionsMapper.ensureInitialized().equalsValue(
      this as PackageOptions,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageOptionsMapper.ensureInitialized().hashValue(
      this as PackageOptions,
    );
  }
}

extension PackageOptionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageOptions, $Out> {
  PackageOptionsCopyWith<$R, PackageOptions, $Out> get $asPackageOptions =>
      $base.as((v, t, t2) => _PackageOptionsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PackageOptionsCopyWith<$R, $In extends PackageOptions, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isDiscontinued, bool? isUnlisted, String? replacedBy});
  PackageOptionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PackageOptionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageOptions, $Out>
    implements PackageOptionsCopyWith<$R, PackageOptions, $Out> {
  _PackageOptionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageOptions> $mapper =
      PackageOptionsMapper.ensureInitialized();
  @override
  $R call({
    bool? isDiscontinued,
    bool? isUnlisted,
    Object? replacedBy = $none,
  }) => $apply(
    FieldCopyWithData({
      if (isDiscontinued != null) #isDiscontinued: isDiscontinued,
      if (isUnlisted != null) #isUnlisted: isUnlisted,
      if (replacedBy != $none) #replacedBy: replacedBy,
    }),
  );
  @override
  PackageOptions $make(CopyWithData data) => PackageOptions(
    isDiscontinued: data.get(#isDiscontinued, or: $value.isDiscontinued),
    isUnlisted: data.get(#isUnlisted, or: $value.isUnlisted),
    replacedBy: data.get(#replacedBy, or: $value.replacedBy),
  );

  @override
  PackageOptionsCopyWith<$R2, PackageOptions, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PackageOptionsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

