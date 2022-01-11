// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

/// @nodoc
class _$SearchResultsTearOff {
  const _$SearchResultsTearOff();

  _SearchResults call({required List<PackageResult> packages, String? next}) {
    return _SearchResults(
      packages: packages,
      next: next,
    );
  }

  SearchResults fromJson(Map<String, Object?> json) {
    return SearchResults.fromJson(json);
  }
}

/// @nodoc
const $SearchResults = _$SearchResultsTearOff();

/// @nodoc
mixin _$SearchResults {
  List<PackageResult> get packages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsCopyWith<SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) then) =
      _$SearchResultsCopyWithImpl<$Res>;
  $Res call({List<PackageResult> packages, String? next});
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  final SearchResults _value;
  // ignore: unused_field
  final $Res Function(SearchResults) _then;

  @override
  $Res call({
    Object? packages = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageResult>,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultsCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$SearchResultsCopyWith(
          _SearchResults value, $Res Function(_SearchResults) then) =
      __$SearchResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<PackageResult> packages, String? next});
}

/// @nodoc
class __$SearchResultsCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res>
    implements _$SearchResultsCopyWith<$Res> {
  __$SearchResultsCopyWithImpl(
      _SearchResults _value, $Res Function(_SearchResults) _then)
      : super(_value, (v) => _then(v as _SearchResults));

  @override
  _SearchResults get _value => super._value as _SearchResults;

  @override
  $Res call({
    Object? packages = freezed,
    Object? next = freezed,
  }) {
    return _then(_SearchResults(
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageResult>,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResults extends _SearchResults {
  _$_SearchResults({required this.packages, this.next}) : super._();

  factory _$_SearchResults.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultsFromJson(json);

  @override
  final List<PackageResult> packages;
  @override
  final String? next;

  @override
  String toString() {
    return 'SearchResults(packages: $packages, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResults &&
            const DeepCollectionEquality().equals(other.packages, packages) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packages),
      const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultsToJson(this);
  }
}

abstract class _SearchResults extends SearchResults {
  factory _SearchResults(
      {required List<PackageResult> packages, String? next}) = _$_SearchResults;
  _SearchResults._() : super._();

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$_SearchResults.fromJson;

  @override
  List<PackageResult> get packages;
  @override
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageResult _$PackageResultFromJson(Map<String, dynamic> json) {
  return _PackageResult.fromJson(json);
}

/// @nodoc
class _$PackageResultTearOff {
  const _$PackageResultTearOff();

  _PackageResult call({required String package}) {
    return _PackageResult(
      package: package,
    );
  }

  PackageResult fromJson(Map<String, Object?> json) {
    return PackageResult.fromJson(json);
  }
}

/// @nodoc
const $PackageResult = _$PackageResultTearOff();

/// @nodoc
mixin _$PackageResult {
  String get package => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageResultCopyWith<PackageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageResultCopyWith<$Res> {
  factory $PackageResultCopyWith(
          PackageResult value, $Res Function(PackageResult) then) =
      _$PackageResultCopyWithImpl<$Res>;
  $Res call({String package});
}

/// @nodoc
class _$PackageResultCopyWithImpl<$Res>
    implements $PackageResultCopyWith<$Res> {
  _$PackageResultCopyWithImpl(this._value, this._then);

  final PackageResult _value;
  // ignore: unused_field
  final $Res Function(PackageResult) _then;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PackageResultCopyWith<$Res>
    implements $PackageResultCopyWith<$Res> {
  factory _$PackageResultCopyWith(
          _PackageResult value, $Res Function(_PackageResult) then) =
      __$PackageResultCopyWithImpl<$Res>;
  @override
  $Res call({String package});
}

/// @nodoc
class __$PackageResultCopyWithImpl<$Res>
    extends _$PackageResultCopyWithImpl<$Res>
    implements _$PackageResultCopyWith<$Res> {
  __$PackageResultCopyWithImpl(
      _PackageResult _value, $Res Function(_PackageResult) _then)
      : super(_value, (v) => _then(v as _PackageResult));

  @override
  _PackageResult get _value => super._value as _PackageResult;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_PackageResult(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageResult implements _PackageResult {
  _$_PackageResult({required this.package});

  factory _$_PackageResult.fromJson(Map<String, dynamic> json) =>
      _$$_PackageResultFromJson(json);

  @override
  final String package;

  @override
  String toString() {
    return 'PackageResult(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageResult &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  _$PackageResultCopyWith<_PackageResult> get copyWith =>
      __$PackageResultCopyWithImpl<_PackageResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageResultToJson(this);
  }
}

abstract class _PackageResult implements PackageResult {
  factory _PackageResult({required String package}) = _$_PackageResult;

  factory _PackageResult.fromJson(Map<String, dynamic> json) =
      _$_PackageResult.fromJson;

  @override
  String get package;
  @override
  @JsonKey(ignore: true)
  _$PackageResultCopyWith<_PackageResult> get copyWith =>
      throw _privateConstructorUsedError;
}
