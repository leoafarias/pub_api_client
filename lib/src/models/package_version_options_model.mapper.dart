// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_version_options_model.dart';

class PackageVersionOptionsMapper
    extends ClassMapperBase<PackageVersionOptions> {
  PackageVersionOptionsMapper._();

  static PackageVersionOptionsMapper? _instance;
  static PackageVersionOptionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageVersionOptionsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageVersionOptions';

  static bool _$isRetracted(PackageVersionOptions v) => v.isRetracted;
  static const Field<PackageVersionOptions, bool> _f$isRetracted = Field(
    'isRetracted',
    _$isRetracted,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<PackageVersionOptions> fields = const {
    #isRetracted: _f$isRetracted,
  };

  static PackageVersionOptions _instantiate(DecodingData data) {
    return PackageVersionOptions(isRetracted: data.dec(_f$isRetracted));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageVersionOptions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageVersionOptions>(map);
  }

  static PackageVersionOptions fromJson(String json) {
    return ensureInitialized().decodeJson<PackageVersionOptions>(json);
  }
}

mixin PackageVersionOptionsMappable {
  String toJson() {
    return PackageVersionOptionsMapper.ensureInitialized()
        .encodeJson<PackageVersionOptions>(this as PackageVersionOptions);
  }

  Map<String, dynamic> toMap() {
    return PackageVersionOptionsMapper.ensureInitialized()
        .encodeMap<PackageVersionOptions>(this as PackageVersionOptions);
  }

  PackageVersionOptionsCopyWith<
    PackageVersionOptions,
    PackageVersionOptions,
    PackageVersionOptions
  >
  get copyWith =>
      _PackageVersionOptionsCopyWithImpl<
        PackageVersionOptions,
        PackageVersionOptions
      >(this as PackageVersionOptions, $identity, $identity);
  @override
  String toString() {
    return PackageVersionOptionsMapper.ensureInitialized().stringifyValue(
      this as PackageVersionOptions,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageVersionOptionsMapper.ensureInitialized().equalsValue(
      this as PackageVersionOptions,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageVersionOptionsMapper.ensureInitialized().hashValue(
      this as PackageVersionOptions,
    );
  }
}

extension PackageVersionOptionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageVersionOptions, $Out> {
  PackageVersionOptionsCopyWith<$R, PackageVersionOptions, $Out>
  get $asPackageVersionOptions => $base.as(
    (v, t, t2) => _PackageVersionOptionsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class PackageVersionOptionsCopyWith<
  $R,
  $In extends PackageVersionOptions,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isRetracted});
  PackageVersionOptionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PackageVersionOptionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageVersionOptions, $Out>
    implements PackageVersionOptionsCopyWith<$R, PackageVersionOptions, $Out> {
  _PackageVersionOptionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageVersionOptions> $mapper =
      PackageVersionOptionsMapper.ensureInitialized();
  @override
  $R call({bool? isRetracted}) => $apply(
    FieldCopyWithData({if (isRetracted != null) #isRetracted: isRetracted}),
  );
  @override
  PackageVersionOptions $make(CopyWithData data) => PackageVersionOptions(
    isRetracted: data.get(#isRetracted, or: $value.isRetracted),
  );

  @override
  PackageVersionOptionsCopyWith<$R2, PackageVersionOptions, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PackageVersionOptionsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

