// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_publisher_model.dart';

class PackagePublisherMapper extends ClassMapperBase<PackagePublisher> {
  PackagePublisherMapper._();

  static PackagePublisherMapper? _instance;
  static PackagePublisherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackagePublisherMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackagePublisher';

  static String? _$publisherId(PackagePublisher v) => v.publisherId;
  static const Field<PackagePublisher, String> _f$publisherId =
      Field('publisherId', _$publisherId, opt: true);

  @override
  final MappableFields<PackagePublisher> fields = const {
    #publisherId: _f$publisherId,
  };

  static PackagePublisher _instantiate(DecodingData data) {
    return PackagePublisher(publisherId: data.dec(_f$publisherId));
  }

  @override
  final Function instantiate = _instantiate;

  static PackagePublisher fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackagePublisher>(map);
  }

  static PackagePublisher fromJson(String json) {
    return ensureInitialized().decodeJson<PackagePublisher>(json);
  }
}

mixin PackagePublisherMappable {
  String toJson() {
    return PackagePublisherMapper.ensureInitialized()
        .encodeJson<PackagePublisher>(this as PackagePublisher);
  }

  Map<String, dynamic> toMap() {
    return PackagePublisherMapper.ensureInitialized()
        .encodeMap<PackagePublisher>(this as PackagePublisher);
  }

  PackagePublisherCopyWith<PackagePublisher, PackagePublisher, PackagePublisher>
      get copyWith => _PackagePublisherCopyWithImpl(
          this as PackagePublisher, $identity, $identity);
  @override
  String toString() {
    return PackagePublisherMapper.ensureInitialized()
        .stringifyValue(this as PackagePublisher);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PackagePublisherMapper.ensureInitialized()
                .isValueEqual(this as PackagePublisher, other));
  }

  @override
  int get hashCode {
    return PackagePublisherMapper.ensureInitialized()
        .hashValue(this as PackagePublisher);
  }
}

extension PackagePublisherValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackagePublisher, $Out> {
  PackagePublisherCopyWith<$R, PackagePublisher, $Out>
      get $asPackagePublisher =>
          $base.as((v, t, t2) => _PackagePublisherCopyWithImpl(v, t, t2));
}

abstract class PackagePublisherCopyWith<$R, $In extends PackagePublisher, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? publisherId});
  PackagePublisherCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PackagePublisherCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackagePublisher, $Out>
    implements PackagePublisherCopyWith<$R, PackagePublisher, $Out> {
  _PackagePublisherCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackagePublisher> $mapper =
      PackagePublisherMapper.ensureInitialized();
  @override
  $R call({Object? publisherId = $none}) => $apply(
      FieldCopyWithData({if (publisherId != $none) #publisherId: publisherId}));
  @override
  PackagePublisher $make(CopyWithData data) => PackagePublisher(
      publisherId: data.get(#publisherId, or: $value.publisherId));

  @override
  PackagePublisherCopyWith<$R2, PackagePublisher, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PackagePublisherCopyWithImpl($value, $cast, t);
}
