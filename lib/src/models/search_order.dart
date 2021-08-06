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

  /// Search order should be in decreasing like count.
  like,

  /// Search order should be in decreasing pub points.
  points,
}

extension SearchOrderExtension on SearchOrder {
  /// Name of the channel
  String get value {
    final self = this;
    return self.toString().split('.').last;
  }
}
