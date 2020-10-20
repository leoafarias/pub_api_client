// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

/// @nodoc
class _$SearchResultsTearOff {
  const _$SearchResultsTearOff();

// ignore: unused_element
  _SearchResults call({List<PackageResult> packages, String next}) {
    return _SearchResults(
      packages: packages,
      next: next,
    );
  }

// ignore: unused_element
  SearchResults fromJson(Map<String, Object> json) {
    return SearchResults.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResults = _$SearchResultsTearOff();

/// @nodoc
mixin _$SearchResults {
  List<PackageResult> get packages;
  String get next;

  Map<String, dynamic> toJson();
  $SearchResultsCopyWith<SearchResults> get copyWith;
}

/// @nodoc
abstract class $SearchResultsCopyWith<$Res> {
  factory $SearchResultsCopyWith(
          SearchResults value, $Res Function(SearchResults) then) =
      _$SearchResultsCopyWithImpl<$Res>;
  $Res call({List<PackageResult> packages, String next});
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
    Object packages = freezed,
    Object next = freezed,
  }) {
    return _then(_value.copyWith(
      packages: packages == freezed
          ? _value.packages
          : packages as List<PackageResult>,
      next: next == freezed ? _value.next : next as String,
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
  $Res call({List<PackageResult> packages, String next});
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
    Object packages = freezed,
    Object next = freezed,
  }) {
    return _then(_SearchResults(
      packages: packages == freezed
          ? _value.packages
          : packages as List<PackageResult>,
      next: next == freezed ? _value.next : next as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchResults extends _SearchResults {
  _$_SearchResults({this.packages, this.next}) : super._();

  factory _$_SearchResults.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultsFromJson(json);

  @override
  final List<PackageResult> packages;
  @override
  final String next;

  @override
  String toString() {
    return 'SearchResults(packages: $packages, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResults &&
            (identical(other.packages, packages) ||
                const DeepCollectionEquality()
                    .equals(other.packages, packages)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(packages) ^
      const DeepCollectionEquality().hash(next);

  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith =>
      __$SearchResultsCopyWithImpl<_SearchResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultsToJson(this);
  }
}

abstract class _SearchResults extends SearchResults {
  _SearchResults._() : super._();
  factory _SearchResults({List<PackageResult> packages, String next}) =
      _$_SearchResults;

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$_SearchResults.fromJson;

  @override
  List<PackageResult> get packages;
  @override
  String get next;
  @override
  _$SearchResultsCopyWith<_SearchResults> get copyWith;
}

PackageResult _$PackageResultFromJson(Map<String, dynamic> json) {
  return _PackageResult.fromJson(json);
}

/// @nodoc
class _$PackageResultTearOff {
  const _$PackageResultTearOff();

// ignore: unused_element
  _PackageResult call({String package}) {
    return _PackageResult(
      package: package,
    );
  }

// ignore: unused_element
  PackageResult fromJson(Map<String, Object> json) {
    return PackageResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PackageResult = _$PackageResultTearOff();

/// @nodoc
mixin _$PackageResult {
  String get package;

  Map<String, dynamic> toJson();
  $PackageResultCopyWith<PackageResult> get copyWith;
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
    Object package = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed ? _value.package : package as String,
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
    Object package = freezed,
  }) {
    return _then(_PackageResult(
      package: package == freezed ? _value.package : package as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PackageResult implements _PackageResult {
  _$_PackageResult({this.package});

  factory _$_PackageResult.fromJson(Map<String, dynamic> json) =>
      _$_$_PackageResultFromJson(json);

  @override
  final String package;

  @override
  String toString() {
    return 'PackageResult(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PackageResult &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(package);

  @override
  _$PackageResultCopyWith<_PackageResult> get copyWith =>
      __$PackageResultCopyWithImpl<_PackageResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PackageResultToJson(this);
  }
}

abstract class _PackageResult implements PackageResult {
  factory _PackageResult({String package}) = _$_PackageResult;

  factory _PackageResult.fromJson(Map<String, dynamic> json) =
      _$_PackageResult.fromJson;

  @override
  String get package;
  @override
  _$PackageResultCopyWith<_PackageResult> get copyWith;
}
