// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'package_metrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PackageMetrics _$PackageMetricsFromJson(Map<String, dynamic> json) {
  return _PackageMetrics.fromJson(json);
}

/// @nodoc
class _$PackageMetricsTearOff {
  const _$PackageMetricsTearOff();

// ignore: unused_element
  _PackageMetrics call({PackageScore score, PackageScoreCard scorecard}) {
    return _PackageMetrics(
      score: score,
      scorecard: scorecard,
    );
  }

// ignore: unused_element
  PackageMetrics fromJson(Map<String, Object> json) {
    return PackageMetrics.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageMetrics = _$PackageMetricsTearOff();

/// @nodoc
mixin _$PackageMetrics {
  PackageScore get score;
  PackageScoreCard get scorecard;

  Map<String, dynamic> toJson();
  $PackageMetricsCopyWith<PackageMetrics> get copyWith;
}

/// @nodoc
abstract class $PackageMetricsCopyWith<$Res> {
  factory $PackageMetricsCopyWith(
          PackageMetrics value, $Res Function(PackageMetrics) then) =
      _$PackageMetricsCopyWithImpl<$Res>;
  $Res call({PackageScore score, PackageScoreCard scorecard});

  $PackageScoreCopyWith<$Res> get score;
  $PackageScoreCardCopyWith<$Res> get scorecard;
}

/// @nodoc
class _$PackageMetricsCopyWithImpl<$Res>
    implements $PackageMetricsCopyWith<$Res> {
  _$PackageMetricsCopyWithImpl(this._value, this._then);

  final PackageMetrics _value;
  // ignore: unused_field
  final $Res Function(PackageMetrics) _then;

  @override
  $Res call({
    Object score = freezed,
    Object scorecard = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed ? _value.score : score as PackageScore,
      scorecard: scorecard == freezed
          ? _value.scorecard
          : scorecard as PackageScoreCard,
    ));
  }

  @override
  $PackageScoreCopyWith<$Res> get score {
    if (_value.score == null) {
      return null;
    }
    return $PackageScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }

  @override
  $PackageScoreCardCopyWith<$Res> get scorecard {
    if (_value.scorecard == null) {
      return null;
    }
    return $PackageScoreCardCopyWith<$Res>(_value.scorecard, (value) {
      return _then(_value.copyWith(scorecard: value));
    });
  }
}

/// @nodoc
abstract class _$PackageMetricsCopyWith<$Res>
    implements $PackageMetricsCopyWith<$Res> {
  factory _$PackageMetricsCopyWith(
          _PackageMetrics value, $Res Function(_PackageMetrics) then) =
      __$PackageMetricsCopyWithImpl<$Res>;
  @override
  $Res call({PackageScore score, PackageScoreCard scorecard});

  @override
  $PackageScoreCopyWith<$Res> get score;
  @override
  $PackageScoreCardCopyWith<$Res> get scorecard;
}

/// @nodoc
class __$PackageMetricsCopyWithImpl<$Res>
    extends _$PackageMetricsCopyWithImpl<$Res>
    implements _$PackageMetricsCopyWith<$Res> {
  __$PackageMetricsCopyWithImpl(
      _PackageMetrics _value, $Res Function(_PackageMetrics) _then)
      : super(_value, (v) => _then(v as _PackageMetrics));

  @override
  _PackageMetrics get _value => super._value as _PackageMetrics;

  @override
  $Res call({
    Object score = freezed,
    Object scorecard = freezed,
  }) {
    return _then(_PackageMetrics(
      score: score == freezed ? _value.score : score as PackageScore,
      scorecard: scorecard == freezed
          ? _value.scorecard
          : scorecard as PackageScoreCard,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageMetrics implements _PackageMetrics {
  _$_PackageMetrics({this.score, this.scorecard});

  factory _$_PackageMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageMetricsFromJson(json);

  @override
  final PackageScore score;
  @override
  final PackageScoreCard scorecard;

  @override
  String toString() {
    return 'PackageMetrics(score: $score, scorecard: $scorecard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageMetrics &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.scorecard, scorecard) ||
                const DeepCollectionEquality()
                    .equals(other.scorecard, scorecard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(scorecard);

  @override
  _$PackageMetricsCopyWith<_PackageMetrics> get copyWith =>
      __$PackageMetricsCopyWithImpl<_PackageMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageMetricsToJson(this);
  }
}

abstract class _PackageMetrics implements PackageMetrics {
  factory _PackageMetrics({PackageScore score, PackageScoreCard scorecard}) =
      _$_PackageMetrics;

  factory _PackageMetrics.fromJson(Map<String, dynamic> json) =
      _$_PackageMetrics.fromJson;

  @override
  PackageScore get score;
  @override
  PackageScoreCard get scorecard;
  @override
  _$PackageMetricsCopyWith<_PackageMetrics> get copyWith;
}
