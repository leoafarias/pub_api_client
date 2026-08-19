import 'package:dart_mappable/dart_mappable.dart';

part 'package_likes_model.mapper.dart';

/// Public like count of a package.
///
/// Unlike the authenticated like-status API, this information is public.
@MappableClass()
class PackageLikes with PackageLikesMappable {
  /// The package whose likes were counted.
  final String package;

  /// The package's public like count.
  final int likes;

  /// Creates a package-like count.
  const PackageLikes({
    required this.package,
    required this.likes,
  });

  /// Decodes a package-like count from a map.
  static const fromMap = PackageLikesMapper.fromMap;

  /// Decodes a package-like count from JSON.
  static const fromJson = PackageLikesMapper.fromJson;
}
