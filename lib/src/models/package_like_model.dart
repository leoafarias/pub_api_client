import 'package:dart_mappable/dart_mappable.dart';

part 'package_like_model.mapper.dart';

/// Package like
@MappableClass()
class PackageLike with PackageLikeMappable {
  final String package;
  final bool liked;
  const PackageLike({
    required this.package,
    required this.liked,
  });

  static const fromMap = PackageLikeMapper.fromMap;
  static const fromJson = PackageLikeMapper.fromJson;
}
