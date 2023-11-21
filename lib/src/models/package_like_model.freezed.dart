// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  $Res call({String package, bool liked});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageLikeImplCopyWith<$Res>
    implements $PackageLikeCopyWith<$Res> {
  factory _$$PackageLikeImplCopyWith(
          _$PackageLikeImpl value, $Res Function(_$PackageLikeImpl) then) =
      __$$PackageLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String package, bool liked});
}

/// @nodoc
class __$$PackageLikeImplCopyWithImpl<$Res>
    extends _$PackageLikeCopyWithImpl<$Res, _$PackageLikeImpl>
    implements _$$PackageLikeImplCopyWith<$Res> {
  __$$PackageLikeImplCopyWithImpl(
      _$PackageLikeImpl _value, $Res Function(_$PackageLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? liked = null,
  }) {
    return _then(_$PackageLikeImpl(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageLikeImpl implements _PackageLike {
  const _$PackageLikeImpl({required this.package, required this.liked});

  factory _$PackageLikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageLikeImplFromJson(json);

  @override
  final String package;
  @override
  final bool liked;

  @override
  String toString() {
    return 'PackageLike(package: $package, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageLikeImpl &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package, liked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageLikeImplCopyWith<_$PackageLikeImpl> get copyWith =>
      __$$PackageLikeImplCopyWithImpl<_$PackageLikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageLikeImplToJson(
      this,
    );
  }
}

abstract class _PackageLike implements PackageLike {
  const factory _PackageLike(
      {required final String package,
      required final bool liked}) = _$PackageLikeImpl;

  factory _PackageLike.fromJson(Map<String, dynamic> json) =
      _$PackageLikeImpl.fromJson;

  @override
  String get package;
  @override
  bool get liked;
  @override
  @JsonKey(ignore: true)
  _$$PackageLikeImplCopyWith<_$PackageLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
