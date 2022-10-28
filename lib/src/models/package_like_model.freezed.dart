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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageLike _$PackageLikeFromJson(Map<String, dynamic> json) {
  return _PackageLike.fromJson(json);
}

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
      _$PackageLikeCopyWithImpl<$Res, PackageLike>;
  @useResult
  $Res call({String package, bool liked, DateTime? created});
}

/// @nodoc
class _$PackageLikeCopyWithImpl<$Res, $Val extends PackageLike>
    implements $PackageLikeCopyWith<$Res> {
  _$PackageLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? liked = null,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageLikeCopyWith<$Res>
    implements $PackageLikeCopyWith<$Res> {
  factory _$$_PackageLikeCopyWith(
          _$_PackageLike value, $Res Function(_$_PackageLike) then) =
      __$$_PackageLikeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String package, bool liked, DateTime? created});
}

/// @nodoc
class __$$_PackageLikeCopyWithImpl<$Res>
    extends _$PackageLikeCopyWithImpl<$Res, _$_PackageLike>
    implements _$$_PackageLikeCopyWith<$Res> {
  __$$_PackageLikeCopyWithImpl(
      _$_PackageLike _value, $Res Function(_$_PackageLike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? liked = null,
    Object? created = freezed,
  }) {
    return _then(_$_PackageLike(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
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
            other is _$_PackageLike &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package, liked, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageLikeCopyWith<_$_PackageLike> get copyWith =>
      __$$_PackageLikeCopyWithImpl<_$_PackageLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageLikeToJson(
      this,
    );
  }
}

abstract class _PackageLike implements PackageLike {
  const factory _PackageLike(
      {required final String package,
      required final bool liked,
      final DateTime? created}) = _$_PackageLike;

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
  _$$_PackageLikeCopyWith<_$_PackageLike> get copyWith =>
      throw _privateConstructorUsedError;
}
