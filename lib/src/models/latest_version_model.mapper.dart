// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'latest_version_model.dart';

class LatestVersionMapper extends ClassMapperBase<LatestVersion> {
  LatestVersionMapper._();

  static LatestVersionMapper? _instance;
  static LatestVersionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LatestVersionMapper._());
      PubPackageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LatestVersion';

  static bool _$needUpdate(LatestVersion v) => v.needUpdate;
  static const Field<LatestVersion, bool> _f$needUpdate =
      Field('needUpdate', _$needUpdate);
  static String _$latestVersion(LatestVersion v) => v.latestVersion;
  static const Field<LatestVersion, String> _f$latestVersion =
      Field('latestVersion', _$latestVersion);
  static PubPackage _$packageInfo(LatestVersion v) => v.packageInfo;
  static const Field<LatestVersion, PubPackage> _f$packageInfo =
      Field('packageInfo', _$packageInfo);

  @override
  final MappableFields<LatestVersion> fields = const {
    #needUpdate: _f$needUpdate,
    #latestVersion: _f$latestVersion,
    #packageInfo: _f$packageInfo,
  };

  static LatestVersion _instantiate(DecodingData data) {
    return LatestVersion(
        needUpdate: data.dec(_f$needUpdate),
        latestVersion: data.dec(_f$latestVersion),
        packageInfo: data.dec(_f$packageInfo));
  }

  @override
  final Function instantiate = _instantiate;

  static LatestVersion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LatestVersion>(map);
  }

  static LatestVersion fromJson(String json) {
    return ensureInitialized().decodeJson<LatestVersion>(json);
  }
}

mixin LatestVersionMappable {
  String toJson() {
    return LatestVersionMapper.ensureInitialized()
        .encodeJson<LatestVersion>(this as LatestVersion);
  }

  Map<String, dynamic> toMap() {
    return LatestVersionMapper.ensureInitialized()
        .encodeMap<LatestVersion>(this as LatestVersion);
  }

  LatestVersionCopyWith<LatestVersion, LatestVersion, LatestVersion>
      get copyWith => _LatestVersionCopyWithImpl(
          this as LatestVersion, $identity, $identity);
  @override
  String toString() {
    return LatestVersionMapper.ensureInitialized()
        .stringifyValue(this as LatestVersion);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LatestVersionMapper.ensureInitialized()
                .isValueEqual(this as LatestVersion, other));
  }

  @override
  int get hashCode {
    return LatestVersionMapper.ensureInitialized()
        .hashValue(this as LatestVersion);
  }
}

extension LatestVersionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LatestVersion, $Out> {
  LatestVersionCopyWith<$R, LatestVersion, $Out> get $asLatestVersion =>
      $base.as((v, t, t2) => _LatestVersionCopyWithImpl(v, t, t2));
}

abstract class LatestVersionCopyWith<$R, $In extends LatestVersion, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PubPackageCopyWith<$R, PubPackage, PubPackage> get packageInfo;
  $R call({bool? needUpdate, String? latestVersion, PubPackage? packageInfo});
  LatestVersionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LatestVersionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LatestVersion, $Out>
    implements LatestVersionCopyWith<$R, LatestVersion, $Out> {
  _LatestVersionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LatestVersion> $mapper =
      LatestVersionMapper.ensureInitialized();
  @override
  PubPackageCopyWith<$R, PubPackage, PubPackage> get packageInfo =>
      $value.packageInfo.copyWith.$chain((v) => call(packageInfo: v));
  @override
  $R call({bool? needUpdate, String? latestVersion, PubPackage? packageInfo}) =>
      $apply(FieldCopyWithData({
        if (needUpdate != null) #needUpdate: needUpdate,
        if (latestVersion != null) #latestVersion: latestVersion,
        if (packageInfo != null) #packageInfo: packageInfo
      }));
  @override
  LatestVersion $make(CopyWithData data) => LatestVersion(
      needUpdate: data.get(#needUpdate, or: $value.needUpdate),
      latestVersion: data.get(#latestVersion, or: $value.latestVersion),
      packageInfo: data.get(#packageInfo, or: $value.packageInfo));

  @override
  LatestVersionCopyWith<$R2, LatestVersion, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LatestVersionCopyWithImpl($value, $cast, t);
}
