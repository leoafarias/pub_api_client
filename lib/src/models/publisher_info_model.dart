import 'package:dart_mappable/dart_mappable.dart';

part 'publisher_info_model.mapper.dart';

/// Public profile of a publisher.
///
/// Returned by `GET /api/publishers/<publisherId>`.
@MappableClass()
class PublisherInfo with PublisherInfoMappable {
  final String? description;
  final String? websiteUrl;
  final String? contactEmail;

  const PublisherInfo({
    this.description,
    this.websiteUrl,
    this.contactEmail,
  });

  static const fromMap = PublisherInfoMapper.fromMap;
  static const fromJson = PublisherInfoMapper.fromJson;
}
