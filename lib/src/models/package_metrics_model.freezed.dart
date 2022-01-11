// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_metrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageMetrics _$PackageMetricsFromJson(Map<String, dynamic> json) {
  return _PackageMetrics.fromJson(json);
}

/// @nodoc
class _$PackageMetricsTearOff {
  const _$PackageMetricsTearOff();

  _PackageMetrics call(
      {required PackageScore score, required PackageScoreCard scorecard}) {
    return _PackageMetrics(
      score: score,
      scorecard: scorecard,
    );
  }

  PackageMetrics fromJson(Map<String, Object?> json) {
    return PackageMetrics.fromJson(json);
  }
}

/// @nodoc
const $PackageMetrics = _$PackageMetricsTearOff();

/// @nodoc
mixin _$PackageMetrics {
  PackageScore get score => throw _privateConstructorUsedError;
  PackageScoreCard get scorecard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageMetricsCopyWith<PackageMetrics> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? score = freezed,
    Object? scorecard = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as PackageScore,
      scorecard: scorecard == freezed
          ? _value.scorecard
          : scorecard // ignore: cast_nullable_to_non_nullable
              as PackageScoreCard,
    ));
  }

  @override
  $PackageScoreCopyWith<$Res> get score {
    return $PackageScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }

  @override
  $PackageScoreCardCopyWith<$Res> get scorecard {
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
    Object? score = freezed,
    Object? scorecard = freezed,
  }) {
    return _then(_PackageMetrics(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as PackageScore,
      scorecard: scorecard == freezed
          ? _value.scorecard
          : scorecard // ignore: cast_nullable_to_non_nullable
              as PackageScoreCard,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageMetrics implements _PackageMetrics {
  _$_PackageMetrics({required this.score, required this.scorecard});

  factory _$_PackageMetrics.fromJson(Map<String, dynamic> json) =>
      _$$_PackageMetricsFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _PackageMetrics &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.scorecard, scorecard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(scorecard));

  @JsonKey(ignore: true)
  @override
  _$PackageMetricsCopyWith<_PackageMetrics> get copyWith =>
      __$PackageMetricsCopyWithImpl<_PackageMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageMetricsToJson(this);
  }
}

abstract class _PackageMetrics implements PackageMetrics {
  factory _PackageMetrics(
      {required PackageScore score,
      required PackageScoreCard scorecard}) = _$_PackageMetrics;

  factory _PackageMetrics.fromJson(Map<String, dynamic> json) =
      _$_PackageMetrics.fromJson;

  @override
  PackageScore get score;
  @override
  PackageScoreCard get scorecard;
  @override
  @JsonKey(ignore: true)
  _$PackageMetricsCopyWith<_PackageMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
