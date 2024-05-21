// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_like_model.dart';

class PackageLikeMapper extends ClassMapperBase<PackageLike> {
  PackageLikeMapper._();

  static PackageLikeMapper? _instance;
  static PackageLikeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageLikeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageLike';

  static String _$package(PackageLike v) => v.package;
  static const Field<PackageLike, String> _f$package =
      Field('package', _$package);
  static bool _$liked(PackageLike v) => v.liked;
  static const Field<PackageLike, bool> _f$liked = Field('liked', _$liked);

  @override
  final MappableFields<PackageLike> fields = const {
    #package: _f$package,
    #liked: _f$liked,
  };

  static PackageLike _instantiate(DecodingData data) {
    return PackageLike(
        package: data.dec(_f$package), liked: data.dec(_f$liked));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageLike fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageLike>(map);
  }

  static PackageLike fromJson(String json) {
    return ensureInitialized().decodeJson<PackageLike>(json);
  }
}

mixin PackageLikeMappable {
  String toJson() {
    return PackageLikeMapper.ensureInitialized()
        .encodeJson<PackageLike>(this as PackageLike);
  }

  Map<String, dynamic> toMap() {
    return PackageLikeMapper.ensureInitialized()
        .encodeMap<PackageLike>(this as PackageLike);
  }

  PackageLikeCopyWith<PackageLike, PackageLike, PackageLike> get copyWith =>
      _PackageLikeCopyWithImpl(this as PackageLike, $identity, $identity);
  @override
  String toString() {
    return PackageLikeMapper.ensureInitialized()
        .stringifyValue(this as PackageLike);
  }

  @override
  bool operator ==(Object other) {
    return PackageLikeMapper.ensureInitialized()
        .equalsValue(this as PackageLike, other);
  }

  @override
  int get hashCode {
    return PackageLikeMapper.ensureInitialized().hashValue(this as PackageLike);
  }
}

extension PackageLikeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageLike, $Out> {
  PackageLikeCopyWith<$R, PackageLike, $Out> get $asPackageLike =>
      $base.as((v, t, t2) => _PackageLikeCopyWithImpl(v, t, t2));
}

abstract class PackageLikeCopyWith<$R, $In extends PackageLike, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? package, bool? liked});
  PackageLikeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PackageLikeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageLike, $Out>
    implements PackageLikeCopyWith<$R, PackageLike, $Out> {
  _PackageLikeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageLike> $mapper =
      PackageLikeMapper.ensureInitialized();
  @override
  $R call({String? package, bool? liked}) => $apply(FieldCopyWithData({
        if (package != null) #package: package,
        if (liked != null) #liked: liked
      }));
  @override
  PackageLike $make(CopyWithData data) => PackageLike(
      package: data.get(#package, or: $value.package),
      liked: data.get(#liked, or: $value.liked));

  @override
  PackageLikeCopyWith<$R2, PackageLike, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PackageLikeCopyWithImpl($value, $cast, t);
}
