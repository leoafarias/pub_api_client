// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_results_model.dart';

class PackageNamesResultsMapper extends ClassMapperBase<PackageNamesResults> {
  PackageNamesResultsMapper._();

  static PackageNamesResultsMapper? _instance;
  static PackageNamesResultsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageNamesResultsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageNamesResults';

  static List<String> _$packages(PackageNamesResults v) => v.packages;
  static const Field<PackageNamesResults, List<String>> _f$packages =
      Field('packages', _$packages);
  static String? _$nextUrl(PackageNamesResults v) => v.nextUrl;
  static const Field<PackageNamesResults, String> _f$nextUrl =
      Field('nextUrl', _$nextUrl, opt: true);

  @override
  final MappableFields<PackageNamesResults> fields = const {
    #packages: _f$packages,
    #nextUrl: _f$nextUrl,
  };

  static PackageNamesResults _instantiate(DecodingData data) {
    return PackageNamesResults(
        packages: data.dec(_f$packages), nextUrl: data.dec(_f$nextUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageNamesResults fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageNamesResults>(map);
  }

  static PackageNamesResults fromJson(String json) {
    return ensureInitialized().decodeJson<PackageNamesResults>(json);
  }
}

mixin PackageNamesResultsMappable {
  String toJson() {
    return PackageNamesResultsMapper.ensureInitialized()
        .encodeJson<PackageNamesResults>(this as PackageNamesResults);
  }

  Map<String, dynamic> toMap() {
    return PackageNamesResultsMapper.ensureInitialized()
        .encodeMap<PackageNamesResults>(this as PackageNamesResults);
  }

  PackageNamesResultsCopyWith<PackageNamesResults, PackageNamesResults,
          PackageNamesResults>
      get copyWith => _PackageNamesResultsCopyWithImpl(
          this as PackageNamesResults, $identity, $identity);
  @override
  String toString() {
    return PackageNamesResultsMapper.ensureInitialized()
        .stringifyValue(this as PackageNamesResults);
  }

  @override
  bool operator ==(Object other) {
    return PackageNamesResultsMapper.ensureInitialized()
        .equalsValue(this as PackageNamesResults, other);
  }

  @override
  int get hashCode {
    return PackageNamesResultsMapper.ensureInitialized()
        .hashValue(this as PackageNamesResults);
  }
}

extension PackageNamesResultsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageNamesResults, $Out> {
  PackageNamesResultsCopyWith<$R, PackageNamesResults, $Out>
      get $asPackageNamesResults =>
          $base.as((v, t, t2) => _PackageNamesResultsCopyWithImpl(v, t, t2));
}

abstract class PackageNamesResultsCopyWith<$R, $In extends PackageNamesResults,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get packages;
  $R call({List<String>? packages, String? nextUrl});
  PackageNamesResultsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PackageNamesResultsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageNamesResults, $Out>
    implements PackageNamesResultsCopyWith<$R, PackageNamesResults, $Out> {
  _PackageNamesResultsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageNamesResults> $mapper =
      PackageNamesResultsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get packages =>
      ListCopyWith($value.packages, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(packages: v));
  @override
  $R call({List<String>? packages, Object? nextUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (packages != null) #packages: packages,
        if (nextUrl != $none) #nextUrl: nextUrl
      }));
  @override
  PackageNamesResults $make(CopyWithData data) => PackageNamesResults(
      packages: data.get(#packages, or: $value.packages),
      nextUrl: data.get(#nextUrl, or: $value.nextUrl));

  @override
  PackageNamesResultsCopyWith<$R2, PackageNamesResults, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PackageNamesResultsCopyWithImpl($value, $cast, t);
}

class SearchResultsMapper extends ClassMapperBase<SearchResults> {
  SearchResultsMapper._();

  static SearchResultsMapper? _instance;
  static SearchResultsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchResultsMapper._());
      PackageResultMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SearchResults';

  static List<PackageResult> _$packages(SearchResults v) => v.packages;
  static const Field<SearchResults, List<PackageResult>> _f$packages =
      Field('packages', _$packages);
  static String? _$next(SearchResults v) => v.next;
  static const Field<SearchResults, String> _f$next =
      Field('next', _$next, opt: true);

  @override
  final MappableFields<SearchResults> fields = const {
    #packages: _f$packages,
    #next: _f$next,
  };

  static SearchResults _instantiate(DecodingData data) {
    return SearchResults(
        packages: data.dec(_f$packages), next: data.dec(_f$next));
  }

  @override
  final Function instantiate = _instantiate;

  static SearchResults fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchResults>(map);
  }

  static SearchResults fromJson(String json) {
    return ensureInitialized().decodeJson<SearchResults>(json);
  }
}

mixin SearchResultsMappable {
  String toJson() {
    return SearchResultsMapper.ensureInitialized()
        .encodeJson<SearchResults>(this as SearchResults);
  }

  Map<String, dynamic> toMap() {
    return SearchResultsMapper.ensureInitialized()
        .encodeMap<SearchResults>(this as SearchResults);
  }

  SearchResultsCopyWith<SearchResults, SearchResults, SearchResults>
      get copyWith => _SearchResultsCopyWithImpl(
          this as SearchResults, $identity, $identity);
  @override
  String toString() {
    return SearchResultsMapper.ensureInitialized()
        .stringifyValue(this as SearchResults);
  }

  @override
  bool operator ==(Object other) {
    return SearchResultsMapper.ensureInitialized()
        .equalsValue(this as SearchResults, other);
  }

  @override
  int get hashCode {
    return SearchResultsMapper.ensureInitialized()
        .hashValue(this as SearchResults);
  }
}

extension SearchResultsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchResults, $Out> {
  SearchResultsCopyWith<$R, SearchResults, $Out> get $asSearchResults =>
      $base.as((v, t, t2) => _SearchResultsCopyWithImpl(v, t, t2));
}

abstract class SearchResultsCopyWith<$R, $In extends SearchResults, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, PackageResult,
      PackageResultCopyWith<$R, PackageResult, PackageResult>> get packages;
  $R call({List<PackageResult>? packages, String? next});
  SearchResultsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchResultsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchResults, $Out>
    implements SearchResultsCopyWith<$R, SearchResults, $Out> {
  _SearchResultsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchResults> $mapper =
      SearchResultsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, PackageResult,
          PackageResultCopyWith<$R, PackageResult, PackageResult>>
      get packages => ListCopyWith($value.packages,
          (v, t) => v.copyWith.$chain(t), (v) => call(packages: v));
  @override
  $R call({List<PackageResult>? packages, Object? next = $none}) =>
      $apply(FieldCopyWithData({
        if (packages != null) #packages: packages,
        if (next != $none) #next: next
      }));
  @override
  SearchResults $make(CopyWithData data) => SearchResults(
      packages: data.get(#packages, or: $value.packages),
      next: data.get(#next, or: $value.next));

  @override
  SearchResultsCopyWith<$R2, SearchResults, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchResultsCopyWithImpl($value, $cast, t);
}

class PackageResultMapper extends ClassMapperBase<PackageResult> {
  PackageResultMapper._();

  static PackageResultMapper? _instance;
  static PackageResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageResultMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PackageResult';

  static String _$package(PackageResult v) => v.package;
  static const Field<PackageResult, String> _f$package =
      Field('package', _$package);

  @override
  final MappableFields<PackageResult> fields = const {
    #package: _f$package,
  };

  static PackageResult _instantiate(DecodingData data) {
    return PackageResult(package: data.dec(_f$package));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageResult fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageResult>(map);
  }

  static PackageResult fromJson(String json) {
    return ensureInitialized().decodeJson<PackageResult>(json);
  }
}

mixin PackageResultMappable {
  String toJson() {
    return PackageResultMapper.ensureInitialized()
        .encodeJson<PackageResult>(this as PackageResult);
  }

  Map<String, dynamic> toMap() {
    return PackageResultMapper.ensureInitialized()
        .encodeMap<PackageResult>(this as PackageResult);
  }

  PackageResultCopyWith<PackageResult, PackageResult, PackageResult>
      get copyWith => _PackageResultCopyWithImpl(
          this as PackageResult, $identity, $identity);
  @override
  String toString() {
    return PackageResultMapper.ensureInitialized()
        .stringifyValue(this as PackageResult);
  }

  @override
  bool operator ==(Object other) {
    return PackageResultMapper.ensureInitialized()
        .equalsValue(this as PackageResult, other);
  }

  @override
  int get hashCode {
    return PackageResultMapper.ensureInitialized()
        .hashValue(this as PackageResult);
  }
}

extension PackageResultValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageResult, $Out> {
  PackageResultCopyWith<$R, PackageResult, $Out> get $asPackageResult =>
      $base.as((v, t, t2) => _PackageResultCopyWithImpl(v, t, t2));
}

abstract class PackageResultCopyWith<$R, $In extends PackageResult, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? package});
  PackageResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PackageResultCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageResult, $Out>
    implements PackageResultCopyWith<$R, PackageResult, $Out> {
  _PackageResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageResult> $mapper =
      PackageResultMapper.ensureInitialized();
  @override
  $R call({String? package}) =>
      $apply(FieldCopyWithData({if (package != null) #package: package}));
  @override
  PackageResult $make(CopyWithData data) =>
      PackageResult(package: data.get(#package, or: $value.package));

  @override
  PackageResultCopyWith<$R2, PackageResult, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PackageResultCopyWithImpl($value, $cast, t);
}
