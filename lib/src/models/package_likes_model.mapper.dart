// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_likes_model.dart';

class PackageLikesMapper extends ClassMapperBase<PackageLikes> {
  PackageLikesMapper._();

  static PackageLikesMapper? _instance;
  static PackageLikesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageLikesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageLikes';

  static String _$package(PackageLikes v) => v.package;
  static const Field<PackageLikes, String> _f$package = Field(
    'package',
    _$package,
  );
  static int _$likes(PackageLikes v) => v.likes;
  static const Field<PackageLikes, int> _f$likes = Field('likes', _$likes);

  @override
  final MappableFields<PackageLikes> fields = const {
    #package: _f$package,
    #likes: _f$likes,
  };

  static PackageLikes _instantiate(DecodingData data) {
    return PackageLikes(
      package: data.dec(_f$package),
      likes: data.dec(_f$likes),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PackageLikes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageLikes>(map);
  }

  static PackageLikes fromJson(String json) {
    return ensureInitialized().decodeJson<PackageLikes>(json);
  }
}

mixin PackageLikesMappable {
  String toJson() {
    return PackageLikesMapper.ensureInitialized().encodeJson<PackageLikes>(
      this as PackageLikes,
    );
  }

  Map<String, dynamic> toMap() {
    return PackageLikesMapper.ensureInitialized().encodeMap<PackageLikes>(
      this as PackageLikes,
    );
  }

  PackageLikesCopyWith<PackageLikes, PackageLikes, PackageLikes> get copyWith =>
      _PackageLikesCopyWithImpl<PackageLikes, PackageLikes>(
        this as PackageLikes,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PackageLikesMapper.ensureInitialized().stringifyValue(
      this as PackageLikes,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageLikesMapper.ensureInitialized().equalsValue(
      this as PackageLikes,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageLikesMapper.ensureInitialized().hashValue(
      this as PackageLikes,
    );
  }
}

extension PackageLikesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageLikes, $Out> {
  PackageLikesCopyWith<$R, PackageLikes, $Out> get $asPackageLikes =>
      $base.as((v, t, t2) => _PackageLikesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PackageLikesCopyWith<$R, $In extends PackageLikes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? package, int? likes});
  PackageLikesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PackageLikesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageLikes, $Out>
    implements PackageLikesCopyWith<$R, PackageLikes, $Out> {
  _PackageLikesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageLikes> $mapper =
      PackageLikesMapper.ensureInitialized();
  @override
  $R call({String? package, int? likes}) => $apply(
    FieldCopyWithData({
      if (package != null) #package: package,
      if (likes != null) #likes: likes,
    }),
  );
  @override
  PackageLikes $make(CopyWithData data) => PackageLikes(
    package: data.get(#package, or: $value.package),
    likes: data.get(#likes, or: $value.likes),
  );

  @override
  PackageLikesCopyWith<$R2, PackageLikes, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PackageLikesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

