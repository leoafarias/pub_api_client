import 'package:dart_mappable/dart_mappable.dart';

part 'search_order.mapper.dart';

@MappableEnum()
enum SearchOrder {
  /// Search score should be a weighted value of [text], [popularity], [points]
  /// and [like], ordered decreasing.
  top,

  /// Search score should depend only on text match similarity, ordered
  /// decreasing.
  text,

  /// Search order should be in decreasing last package creation time.
  created,

  /// Search order should be in decreasing last package updated time.
  updated,

  /// Search order should be in decreasing popularity score.
  popularity,

  /// Search order should be in decreasing download count.
  downloads,

  /// Search order should be in decreasing like count.
  like,

  /// Search order should be in decreasing pub points.
  points;

  const SearchOrder();

  String get value => name;
}
