// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_order.dart';

class SearchOrderMapper extends EnumMapper<SearchOrder> {
  SearchOrderMapper._();

  static SearchOrderMapper? _instance;
  static SearchOrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchOrderMapper._());
    }
    return _instance!;
  }

  static SearchOrder fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SearchOrder decode(dynamic value) {
    switch (value) {
      case r'top':
        return SearchOrder.top;
      case r'text':
        return SearchOrder.text;
      case r'created':
        return SearchOrder.created;
      case r'updated':
        return SearchOrder.updated;
      case r'popularity':
        return SearchOrder.popularity;
      case r'downloads':
        return SearchOrder.downloads;
      case r'like':
        return SearchOrder.like;
      case r'points':
        return SearchOrder.points;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SearchOrder self) {
    switch (self) {
      case SearchOrder.top:
        return r'top';
      case SearchOrder.text:
        return r'text';
      case SearchOrder.created:
        return r'created';
      case SearchOrder.updated:
        return r'updated';
      case SearchOrder.popularity:
        return r'popularity';
      case SearchOrder.downloads:
        return r'downloads';
      case SearchOrder.like:
        return r'like';
      case SearchOrder.points:
        return r'points';
    }
  }
}

extension SearchOrderMapperExtension on SearchOrder {
  String toValue() {
    SearchOrderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SearchOrder>(this) as String;
  }
}

