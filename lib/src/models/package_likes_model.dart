import 'package:dart_mappable/dart_mappable.dart';

part 'package_likes_model.mapper.dart';

/// Public like count of a package.
///
/// Returned by `GET /api/packages/<package>/likes`, which does not require
/// authentication. See `PackageLike` for the authenticated per-user status.
///
/// pub.dev's `PackageLikesCount` declares both fields nullable, but the
/// handler always populates them and neither was null across every package
/// probed. Kept non-nullable so consumers do not have to null-check a value
/// the server always sends.
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
