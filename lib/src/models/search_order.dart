import 'package:dart_mappable/dart_mappable.dart';

part 'search_order.mapper.dart';

/// Mirrors the `SearchOrder` enum pub.dev accepts on `sort=`.
///
/// pub.dev silently falls back to [top] for values it does not recognize,
/// so unknown orders fail quietly rather than erroring.
@MappableEnum()
enum SearchOrder {
  /// Search score should be a weighted value of [text], [downloads], [points]
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
  ///
  /// pub.dev retired the popularity score and no longer accepts this value;
  /// requests using it are served as [top]. Use [downloads] instead.
  @Deprecated('pub.dev no longer supports `popularity`; use `downloads`')
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

  String get value => name;
}
