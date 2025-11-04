// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_metrics_model.dart';

class PackageMetricsMapper extends ClassMapperBase<PackageMetrics> {
  PackageMetricsMapper._();

  static PackageMetricsMapper? _instance;
  static PackageMetricsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageMetricsMapper._());
      PackageScoreMapper.ensureInitialized();
      PackageScoreCardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PackageMetrics';

  static PackageScore _$score(PackageMetrics v) => v.score;
  static const Field<PackageMetrics, PackageScore> _f$score = Field(
    'score',
    _$score,
  );
  static PackageScoreCard _$scorecard(PackageMetrics v) => v.scorecard;
  static const Field<PackageMetrics, PackageScoreCard> _f$scorecard = Field(
    'scorecard',
    _$scorecard,
  );

  @override
  final MappableFields<PackageMetrics> fields = const {
    #score: _f$score,
    #scorecard: _f$scorecard,
  };

  static PackageMetrics _instantiate(DecodingData data) {
    return PackageMetrics(
      score: data.dec(_f$score),
      scorecard: data.dec(_f$scorecard),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PackageMetrics fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageMetrics>(map);
  }

  static PackageMetrics fromJson(String json) {
    return ensureInitialized().decodeJson<PackageMetrics>(json);
  }
}

mixin PackageMetricsMappable {
  String toJson() {
    return PackageMetricsMapper.ensureInitialized().encodeJson<PackageMetrics>(
      this as PackageMetrics,
    );
  }

  Map<String, dynamic> toMap() {
    return PackageMetricsMapper.ensureInitialized().encodeMap<PackageMetrics>(
      this as PackageMetrics,
    );
  }

  PackageMetricsCopyWith<PackageMetrics, PackageMetrics, PackageMetrics>
  get copyWith => _PackageMetricsCopyWithImpl<PackageMetrics, PackageMetrics>(
    this as PackageMetrics,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PackageMetricsMapper.ensureInitialized().stringifyValue(
      this as PackageMetrics,
    );
  }

  @override
  bool operator ==(Object other) {
    return PackageMetricsMapper.ensureInitialized().equalsValue(
      this as PackageMetrics,
      other,
    );
  }

  @override
  int get hashCode {
    return PackageMetricsMapper.ensureInitialized().hashValue(
      this as PackageMetrics,
    );
  }
}

extension PackageMetricsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageMetrics, $Out> {
  PackageMetricsCopyWith<$R, PackageMetrics, $Out> get $asPackageMetrics =>
      $base.as((v, t, t2) => _PackageMetricsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PackageMetricsCopyWith<$R, $In extends PackageMetrics, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PackageScoreCopyWith<$R, PackageScore, PackageScore> get score;
  PackageScoreCardCopyWith<$R, PackageScoreCard, PackageScoreCard>
  get scorecard;
  $R call({PackageScore? score, PackageScoreCard? scorecard});
  PackageMetricsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PackageMetricsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageMetrics, $Out>
    implements PackageMetricsCopyWith<$R, PackageMetrics, $Out> {
  _PackageMetricsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageMetrics> $mapper =
      PackageMetricsMapper.ensureInitialized();
  @override
  PackageScoreCopyWith<$R, PackageScore, PackageScore> get score =>
      $value.score.copyWith.$chain((v) => call(score: v));
  @override
  PackageScoreCardCopyWith<$R, PackageScoreCard, PackageScoreCard>
  get scorecard => $value.scorecard.copyWith.$chain((v) => call(scorecard: v));
  @override
  $R call({PackageScore? score, PackageScoreCard? scorecard}) => $apply(
    FieldCopyWithData({
      if (score != null) #score: score,
      if (scorecard != null) #scorecard: scorecard,
    }),
  );
  @override
  PackageMetrics $make(CopyWithData data) => PackageMetrics(
    score: data.get(#score, or: $value.score),
    scorecard: data.get(#scorecard, or: $value.scorecard),
  );

  @override
  PackageMetricsCopyWith<$R2, PackageMetrics, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PackageMetricsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

