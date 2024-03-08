// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
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
      case 'top':
        return SearchOrder.top;
      case 'text':
        return SearchOrder.text;
      case 'created':
        return SearchOrder.created;
      case 'updated':
        return SearchOrder.updated;
      case 'popularity':
        return SearchOrder.popularity;
      case 'like':
        return SearchOrder.like;
      case 'points':
        return SearchOrder.points;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SearchOrder self) {
    switch (self) {
      case SearchOrder.top:
        return 'top';
      case SearchOrder.text:
        return 'text';
      case SearchOrder.created:
        return 'created';
      case SearchOrder.updated:
        return 'updated';
      case SearchOrder.popularity:
        return 'popularity';
      case SearchOrder.like:
        return 'like';
      case SearchOrder.points:
        return 'points';
    }
  }
}

extension SearchOrderMapperExtension on SearchOrder {
  String toValue() {
    SearchOrderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SearchOrder>(this) as String;
  }
}
