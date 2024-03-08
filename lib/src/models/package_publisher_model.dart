import 'package:dart_mappable/dart_mappable.dart';

part 'package_publisher_model.mapper.dart';

/// Package Publisher Model

@MappableClass()
class PackagePublisher with PackagePublisherMappable {
  final String? publisherId;
  const PackagePublisher({
    this.publisherId,
  });

  static const fromMap = PackagePublisherMapper.fromMap;
  static const fromJson = PackagePublisherMapper.fromJson;
}
