// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageLike _$PackageLikeFromJson(Map<String, dynamic> json) {
  return _PackageLike.fromJson(json);
}

/// @nodoc
class _$PackageLikeTearOff {
  const _$PackageLikeTearOff();

  _PackageLike call(
      {required String package, required bool liked, DateTime? created}) {
    return _PackageLike(
      package: package,
      liked: liked,
      created: created,
    );
  }

  PackageLike fromJson(Map<String, Object?> json) {
    return PackageLike.fromJson(json);
  }
}

/// @nodoc
const $PackageLike = _$PackageLikeTearOff();

/// @nodoc
mixin _$PackageLike {
  String get package => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageLikeCopyWith<PackageLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageLikeCopyWith<$Res> {
  factory $PackageLikeCopyWith(
          PackageLike value, $Res Function(PackageLike) then) =
      _$PackageLikeCopyWithImpl<$Res>;
  $Res call({String package, bool liked, DateTime? created});
}

/// @nodoc
class _$PackageLikeCopyWithImpl<$Res> implements $PackageLikeCopyWith<$Res> {
  _$PackageLikeCopyWithImpl(this._value, this._then);

  final PackageLike _value;
  // ignore: unused_field
  final $Res Function(PackageLike) _then;

  @override
  $Res call({
    Object? package = freezed,
    Object? liked = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PackageLikeCopyWith<$Res>
    implements $PackageLikeCopyWith<$Res> {
  factory _$PackageLikeCopyWith(
          _PackageLike value, $Res Function(_PackageLike) then) =
      __$PackageLikeCopyWithImpl<$Res>;
  @override
  $Res call({String package, bool liked, DateTime? created});
}

/// @nodoc
class __$PackageLikeCopyWithImpl<$Res> extends _$PackageLikeCopyWithImpl<$Res>
    implements _$PackageLikeCopyWith<$Res> {
  __$PackageLikeCopyWithImpl(
      _PackageLike _value, $Res Function(_PackageLike) _then)
      : super(_value, (v) => _then(v as _PackageLike));

  @override
  _PackageLike get _value => super._value as _PackageLike;

  @override
  $Res call({
    Object? package = freezed,
    Object? liked = freezed,
    Object? created = freezed,
  }) {
    return _then(_PackageLike(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageLike implements _PackageLike {
  const _$_PackageLike(
      {required this.package, required this.liked, this.created});

  factory _$_PackageLike.fromJson(Map<String, dynamic> json) =>
      _$$_PackageLikeFromJson(json);

  @override
  final String package;
  @override
  final bool liked;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'PackageLike(package: $package, liked: $liked, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageLike &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.liked, liked) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(package),
      const DeepCollectionEquality().hash(liked),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$PackageLikeCopyWith<_PackageLike> get copyWith =>
      __$PackageLikeCopyWithImpl<_PackageLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageLikeToJson(this);
  }
}

abstract class _PackageLike implements PackageLike {
  const factory _PackageLike(
      {required String package,
      required bool liked,
      DateTime? created}) = _$_PackageLike;

  factory _PackageLike.fromJson(Map<String, dynamic> json) =
      _$_PackageLike.fromJson;

  @override
  String get package;
  @override
  bool get liked;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$PackageLikeCopyWith<_PackageLike> get copyWith =>
      throw _privateConstructorUsedError;
}
