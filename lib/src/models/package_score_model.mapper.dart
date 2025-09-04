// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_score_model.dart';

class PackageScoreMapper extends ClassMapperBase<PackageScore> {
  PackageScoreMapper._();

  static PackageScoreMapper? _instance;
  static PackageScoreMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageScoreMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageScore';

  static int? _$grantedPoints(PackageScore v) => v.grantedPoints;
  static const Field<PackageScore, int> _f$grantedPoints =
      Field('grantedPoints', _$grantedPoints);
  static int? _$maxPoints(PackageScore v) => v.maxPoints;
  static const Field<PackageScore, int> _f$maxPoints =
      Field('maxPoints', _$maxPoints);
  static int _$likeCount(PackageScore v) => v.likeCount;
  static const Field<PackageScore, int> _f$likeCount =
      Field('likeCount', _$likeCount);
  static double? _$popularityScore(PackageScore v) => v.popularityScore;
  static const Field<PackageScore, double> _f$popularityScore =
      Field('popularityScore', _$popularityScore);
  static int? _$downloadCount30Days(PackageScore v) => v.downloadCount30Days;
  static const Field<PackageScore, int> _f$downloadCount30Days =
      Field('downloadCount30Days', _$downloadCount30Days);
  static List<String> _$tags(PackageScore v) => v.tags;
  static const Field<PackageScore, List<String>> _f$tags =
      Field('tags', _$tags);

  @override
  final MappableFields<PackageScore> fields = const {
    #grantedPoints: _f$grantedPoints,
    #maxPoints: _f$maxPoints,
    #likeCount: _f$likeCount,
    #popularityScore: _f$popularityScore,
    #downloadCount30Days: _f$downloadCount30Days,
    #tags: _f$tags,
  };

  static PackageScore _instantiate(DecodingData data) {
    return PackageScore(
        grantedPoints: data.dec(_f$grantedPoints),
        maxPoints: data.dec(_f$maxPoints),
        likeCount: data.dec(_f$likeCount),
        popularityScore: data.dec(_f$popularityScore),
        downloadCount30Days: data.dec(_f$downloadCount30Days),
        tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageScore fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageScore>(map);
  }

  static PackageScore fromJson(String json) {
    return ensureInitialized().decodeJson<PackageScore>(json);
  }
}

mixin PackageScoreMappable {
  String toJson() {
    return PackageScoreMapper.ensureInitialized()
        .encodeJson<PackageScore>(this as PackageScore);
  }

  Map<String, dynamic> toMap() {
    return PackageScoreMapper.ensureInitialized()
        .encodeMap<PackageScore>(this as PackageScore);
  }

  PackageScoreCopyWith<PackageScore, PackageScore, PackageScore> get copyWith =>
      _PackageScoreCopyWithImpl(this as PackageScore, $identity, $identity);
  @override
  String toString() {
    return PackageScoreMapper.ensureInitialized()
        .stringifyValue(this as PackageScore);
  }

  @override
  bool operator ==(Object other) {
    return PackageScoreMapper.ensureInitialized()
        .equalsValue(this as PackageScore, other);
  }

  @override
  int get hashCode {
    return PackageScoreMapper.ensureInitialized()
        .hashValue(this as PackageScore);
  }
}

extension PackageScoreValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageScore, $Out> {
  PackageScoreCopyWith<$R, PackageScore, $Out> get $asPackageScore =>
      $base.as((v, t, t2) => _PackageScoreCopyWithImpl(v, t, t2));
}

abstract class PackageScoreCopyWith<$R, $In extends PackageScore, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  $R call(
      {int? grantedPoints,
      int? maxPoints,
      int? likeCount,
      double? popularityScore,
      int? downloadCount30Days,
      List<String>? tags});
  PackageScoreCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PackageScoreCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageScore, $Out>
    implements PackageScoreCopyWith<$R, PackageScore, $Out> {
  _PackageScoreCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageScore> $mapper =
      PackageScoreMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  $R call(
          {Object? grantedPoints = $none,
          Object? maxPoints = $none,
          int? likeCount,
          Object? popularityScore = $none,
          Object? downloadCount30Days = $none,
          List<String>? tags}) =>
      $apply(FieldCopyWithData({
        if (grantedPoints != $none) #grantedPoints: grantedPoints,
        if (maxPoints != $none) #maxPoints: maxPoints,
        if (likeCount != null) #likeCount: likeCount,
        if (popularityScore != $none) #popularityScore: popularityScore,
        if (downloadCount30Days != $none)
          #downloadCount30Days: downloadCount30Days,
        if (tags != null) #tags: tags
      }));
  @override
  PackageScore $make(CopyWithData data) => PackageScore(
      grantedPoints: data.get(#grantedPoints, or: $value.grantedPoints),
      maxPoints: data.get(#maxPoints, or: $value.maxPoints),
      likeCount: data.get(#likeCount, or: $value.likeCount),
      popularityScore: data.get(#popularityScore, or: $value.popularityScore),
      downloadCount30Days:
          data.get(#downloadCount30Days, or: $value.downloadCount30Days),
      tags: data.get(#tags, or: $value.tags));

  @override
  PackageScoreCopyWith<$R2, PackageScore, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PackageScoreCopyWithImpl($value, $cast, t);
}
