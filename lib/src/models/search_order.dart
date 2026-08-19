import 'package:dart_mappable/dart_mappable.dart';

part 'search_order.mapper.dart';

/// Mirrors the `SearchOrder` enum pub.dev accepts on `sort=`.
///
/// pub.dev silently falls back to [SearchOrder.top] for values it does not
/// recognize, so unknown orders fail quietly rather than erroring.
@MappableEnum()
enum SearchOrder {
  /// Search score should be a weighted value of [SearchOrder.text],
  /// [SearchOrder.downloads], [SearchOrder.points], and [SearchOrder.like],
  /// ordered decreasing.
  top,

  /// Search score should depend only on text match similarity, ordered
  /// decreasing.
  text,

  /// Search order should be in decreasing last package creation time.
  created,

  /// Search order should be in decreasing last package updated time.
  updated,

  /// Search order should be in decreasing popularity score.
  ///
  /// pub.dev retired the popularity score and no longer accepts this value;
  /// requests using it are served as [SearchOrder.top]. Use
  /// [SearchOrder.downloads] instead.
  @Deprecated('Use SearchOrder.downloads instead.')
  popularity,

  /// Search order should be in decreasing download count.
  downloads,

  /// Search order should be in decreasing like count.
  like,

  /// Search order should be in decreasing pub points.
  points,

  /// Search order should be in decreasing trend score.
  trending;

  const SearchOrder();

  /// The value sent in pub.dev's `sort` query parameter.
  String get value => name;
}
