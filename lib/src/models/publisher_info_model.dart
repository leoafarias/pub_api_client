import 'package:dart_mappable/dart_mappable.dart';

part 'publisher_info_model.mapper.dart';

/// Public profile information for a publisher.
@MappableClass()
class PublisherInfo with PublisherInfoMappable {
  /// The publisher's Markdown-formatted description.
  final String? description;

  /// The publisher's website URL.
  final String? websiteUrl;

  /// The publisher's verified contact email address.
  final String? contactEmail;

  /// Creates a publisher profile.
  const PublisherInfo({
    this.description,
    this.websiteUrl,
    this.contactEmail,
  });

  /// Decodes a publisher profile from a map.
  static const fromMap = PublisherInfoMapper.fromMap;

  /// Decodes a publisher profile from JSON.
  static const fromJson = PublisherInfoMapper.fromJson;
}
