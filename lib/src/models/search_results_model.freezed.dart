// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageNamesResults _$PackageNamesResultsFromJson(Map<String, dynamic> json) {
  return _PackageNamesResults.fromJson(json);
}

/// @nodoc
mixin _$PackageNamesResults {
  List<String> get packages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageNamesResultsCopyWith<PackageNamesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageNamesResultsCopyWith<$Res> {
  factory $PackageNamesResultsCopyWith(
          PackageNamesResults value, $Res Function(PackageNamesResults) then) =
      _$PackageNamesResultsCopyWithImpl<$Res, PackageNamesResults>;
  @useResult
  $Res call({List<String> packages, String? next});
}

/// @nodoc
class _$PackageNamesResultsCopyWithImpl<$Res, $Val extends PackageNamesResults>
    implements $PackageNamesResultsCopyWith<$Res> {
  _$PackageNamesResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageNamesResultsImplCopyWith<$Res>
    implements $PackageNamesResultsCopyWith<$Res> {
  factory _$$PackageNamesResultsImplCopyWith(_$PackageNamesResultsImpl value,
          $Res Function(_$PackageNamesResultsImpl) then) =
      __$$PackageNamesResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> packages, String? next});
}

/// @nodoc
class __$$PackageNamesResultsImplCopyWithImpl<$Res>
    extends _$PackageNamesResultsCopyWithImpl<$Res, _$PackageNamesResultsImpl>
    implements _$$PackageNamesResultsImplCopyWith<$Res> {
  __$$PackageNamesResultsImplCopyWithImpl(_$PackageNamesResultsImpl _value,
      $Res Function(_$PackageNamesResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? next = freezed,
  }) {
    return _then(_$PackageNamesResultsImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageNamesResultsImpl extends _PackageNamesResults {
  const _$PackageNamesResultsImpl(
      {required final List<String> packages, this.next})
      : _packages = packages,
        super._();

  factory _$PackageNamesResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageNamesResultsImplFromJson(json);

  final List<String> _packages;
  @override
  List<String> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  final String? next;

  @override
  String toString() {
    return 'PackageNamesResults(packages: $packages, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageNamesResultsImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_packages), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageNamesResultsImplCopyWith<_$PackageNamesResultsImpl> get copyWith =>
      __$$PackageNamesResultsImplCopyWithImpl<_$PackageNamesResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageNamesResultsImplToJson(
      this,
    );
  }
}

abstract class _PackageNamesResults extends PackageNamesResults {
  const factory _PackageNamesResults(
      {required final List<String> packages,
      final String? next}) = _$PackageNamesResultsImpl;
  const _PackageNamesResults._() : super._();

  factory _PackageNamesResults.fromJson(Map<String, dynamic> json) =
      _$PackageNamesResultsImpl.fromJson;

  @override
  List<String> get packages;
  @override
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$PackageNamesResultsImplCopyWith<_$PackageNamesResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResults _$SearchResultsFromJson(Map<String, dynamic> json) {
  return _SearchResults.fromJson(json);
}

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
      _$SearchResultsCopyWithImpl<$Res, SearchResults>;
  @useResult
  $Res call({List<PackageResult> packages, String? next});
}

/// @nodoc
class _$SearchResultsCopyWithImpl<$Res, $Val extends SearchResults>
    implements $SearchResultsCopyWith<$Res> {
  _$SearchResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageResult>,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultsImplCopyWith<$Res>
    implements $SearchResultsCopyWith<$Res> {
  factory _$$SearchResultsImplCopyWith(
          _$SearchResultsImpl value, $Res Function(_$SearchResultsImpl) then) =
      __$$SearchResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PackageResult> packages, String? next});
}

/// @nodoc
class __$$SearchResultsImplCopyWithImpl<$Res>
    extends _$SearchResultsCopyWithImpl<$Res, _$SearchResultsImpl>
    implements _$$SearchResultsImplCopyWith<$Res> {
  __$$SearchResultsImplCopyWithImpl(
      _$SearchResultsImpl _value, $Res Function(_$SearchResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? next = freezed,
  }) {
    return _then(_$SearchResultsImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageResult>,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultsImpl extends _SearchResults {
  const _$SearchResultsImpl(
      {required final List<PackageResult> packages, this.next})
      : _packages = packages,
        super._();

  factory _$SearchResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultsImplFromJson(json);

  final List<PackageResult> _packages;
  @override
  List<PackageResult> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

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
            other is _$SearchResultsImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_packages), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      __$$SearchResultsImplCopyWithImpl<_$SearchResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultsImplToJson(
      this,
    );
  }
}

abstract class _SearchResults extends SearchResults {
  const factory _SearchResults(
      {required final List<PackageResult> packages,
      final String? next}) = _$SearchResultsImpl;
  const _SearchResults._() : super._();

  factory _SearchResults.fromJson(Map<String, dynamic> json) =
      _$SearchResultsImpl.fromJson;

  @override
  List<PackageResult> get packages;
  @override
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultsImplCopyWith<_$SearchResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageResult _$PackageResultFromJson(Map<String, dynamic> json) {
  return _PackageResult.fromJson(json);
}

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
      _$PackageResultCopyWithImpl<$Res, PackageResult>;
  @useResult
  $Res call({String package});
}

/// @nodoc
class _$PackageResultCopyWithImpl<$Res, $Val extends PackageResult>
    implements $PackageResultCopyWith<$Res> {
  _$PackageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_value.copyWith(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageResultImplCopyWith<$Res>
    implements $PackageResultCopyWith<$Res> {
  factory _$$PackageResultImplCopyWith(
          _$PackageResultImpl value, $Res Function(_$PackageResultImpl) then) =
      __$$PackageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String package});
}

/// @nodoc
class __$$PackageResultImplCopyWithImpl<$Res>
    extends _$PackageResultCopyWithImpl<$Res, _$PackageResultImpl>
    implements _$$PackageResultImplCopyWith<$Res> {
  __$$PackageResultImplCopyWithImpl(
      _$PackageResultImpl _value, $Res Function(_$PackageResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_$PackageResultImpl(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageResultImpl implements _PackageResult {
  const _$PackageResultImpl({required this.package});

  factory _$PackageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageResultImplFromJson(json);

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
            other is _$PackageResultImpl &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageResultImplCopyWith<_$PackageResultImpl> get copyWith =>
      __$$PackageResultImplCopyWithImpl<_$PackageResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageResultImplToJson(
      this,
    );
  }
}

abstract class _PackageResult implements PackageResult {
  const factory _PackageResult({required final String package}) =
      _$PackageResultImpl;

  factory _PackageResult.fromJson(Map<String, dynamic> json) =
      _$PackageResultImpl.fromJson;

  @override
  String get package;
  @override
  @JsonKey(ignore: true)
  _$$PackageResultImplCopyWith<_$PackageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
