// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_publisher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagePublisher _$PackagePublisherFromJson(Map<String, dynamic> json) {
  return _PackagePublisher.fromJson(json);
}

/// @nodoc
mixin _$PackagePublisher {
  String? get publisherId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagePublisherCopyWith<PackagePublisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagePublisherCopyWith<$Res> {
  factory $PackagePublisherCopyWith(
          PackagePublisher value, $Res Function(PackagePublisher) then) =
      _$PackagePublisherCopyWithImpl<$Res, PackagePublisher>;
  @useResult
  $Res call({String? publisherId});
}

/// @nodoc
class _$PackagePublisherCopyWithImpl<$Res, $Val extends PackagePublisher>
    implements $PackagePublisherCopyWith<$Res> {
  _$PackagePublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_value.copyWith(
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackagePublisherCopyWith<$Res>
    implements $PackagePublisherCopyWith<$Res> {
  factory _$$_PackagePublisherCopyWith(
          _$_PackagePublisher value, $Res Function(_$_PackagePublisher) then) =
      __$$_PackagePublisherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? publisherId});
}

/// @nodoc
class __$$_PackagePublisherCopyWithImpl<$Res>
    extends _$PackagePublisherCopyWithImpl<$Res, _$_PackagePublisher>
    implements _$$_PackagePublisherCopyWith<$Res> {
  __$$_PackagePublisherCopyWithImpl(
      _$_PackagePublisher _value, $Res Function(_$_PackagePublisher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_$_PackagePublisher(
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackagePublisher implements _PackagePublisher {
  _$_PackagePublisher({required this.publisherId});

  factory _$_PackagePublisher.fromJson(Map<String, dynamic> json) =>
      _$$_PackagePublisherFromJson(json);

  @override
  final String? publisherId;

  @override
  String toString() {
    return 'PackagePublisher(publisherId: $publisherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackagePublisher &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publisherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackagePublisherCopyWith<_$_PackagePublisher> get copyWith =>
      __$$_PackagePublisherCopyWithImpl<_$_PackagePublisher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagePublisherToJson(
      this,
    );
  }
}

abstract class _PackagePublisher implements PackagePublisher {
  factory _PackagePublisher({required final String? publisherId}) =
      _$_PackagePublisher;

  factory _PackagePublisher.fromJson(Map<String, dynamic> json) =
      _$_PackagePublisher.fromJson;

  @override
  String? get publisherId;
  @override
  @JsonKey(ignore: true)
  _$$_PackagePublisherCopyWith<_$_PackagePublisher> get copyWith =>
      throw _privateConstructorUsedError;
}
