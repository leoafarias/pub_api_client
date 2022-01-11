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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagePublisher _$PackagePublisherFromJson(Map<String, dynamic> json) {
  return _PackagePublisher.fromJson(json);
}

/// @nodoc
class _$PackagePublisherTearOff {
  const _$PackagePublisherTearOff();

  _PackagePublisher call({required String? publisherId}) {
    return _PackagePublisher(
      publisherId: publisherId,
    );
  }

  PackagePublisher fromJson(Map<String, Object?> json) {
    return PackagePublisher.fromJson(json);
  }
}

/// @nodoc
const $PackagePublisher = _$PackagePublisherTearOff();

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
      _$PackagePublisherCopyWithImpl<$Res>;
  $Res call({String? publisherId});
}

/// @nodoc
class _$PackagePublisherCopyWithImpl<$Res>
    implements $PackagePublisherCopyWith<$Res> {
  _$PackagePublisherCopyWithImpl(this._value, this._then);

  final PackagePublisher _value;
  // ignore: unused_field
  final $Res Function(PackagePublisher) _then;

  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_value.copyWith(
      publisherId: publisherId == freezed
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PackagePublisherCopyWith<$Res>
    implements $PackagePublisherCopyWith<$Res> {
  factory _$PackagePublisherCopyWith(
          _PackagePublisher value, $Res Function(_PackagePublisher) then) =
      __$PackagePublisherCopyWithImpl<$Res>;
  @override
  $Res call({String? publisherId});
}

/// @nodoc
class __$PackagePublisherCopyWithImpl<$Res>
    extends _$PackagePublisherCopyWithImpl<$Res>
    implements _$PackagePublisherCopyWith<$Res> {
  __$PackagePublisherCopyWithImpl(
      _PackagePublisher _value, $Res Function(_PackagePublisher) _then)
      : super(_value, (v) => _then(v as _PackagePublisher));

  @override
  _PackagePublisher get _value => super._value as _PackagePublisher;

  @override
  $Res call({
    Object? publisherId = freezed,
  }) {
    return _then(_PackagePublisher(
      publisherId: publisherId == freezed
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
            other is _PackagePublisher &&
            const DeepCollectionEquality()
                .equals(other.publisherId, publisherId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(publisherId));

  @JsonKey(ignore: true)
  @override
  _$PackagePublisherCopyWith<_PackagePublisher> get copyWith =>
      __$PackagePublisherCopyWithImpl<_PackagePublisher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagePublisherToJson(this);
  }
}

abstract class _PackagePublisher implements PackagePublisher {
  factory _PackagePublisher({required String? publisherId}) =
      _$_PackagePublisher;

  factory _PackagePublisher.fromJson(Map<String, dynamic> json) =
      _$_PackagePublisher.fromJson;

  @override
  String? get publisherId;
  @override
  @JsonKey(ignore: true)
  _$PackagePublisherCopyWith<_PackagePublisher> get copyWith =>
      throw _privateConstructorUsedError;
}
