import 'package:dart_mappable/dart_mappable.dart';

part 'package_likes_model.mapper.dart';

/// Public like count of a package.
///
/// Returned by `GET /api/packages/<package>/likes`, which does not require
/// authentication. See `PackageLike` for the authenticated per-user status.
@MappableClass()
class PackageLikes with PackageLikesMappable {
  final String package;
  final int likes;

  const PackageLikes({
    required this.package,
    required this.likes,
  });

  static const fromMap = PackageLikesMapper.fromMap;
  static const fromJson = PackageLikesMapper.fromJson;
}
