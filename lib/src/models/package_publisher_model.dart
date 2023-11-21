import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_publisher_model.freezed.dart';
part 'package_publisher_model.g.dart';

/// Package Publisher Model
@freezed
class PackagePublisher with _$PackagePublisher {
  const factory PackagePublisher({
    String? publisherId,
  }) = _PackagePublisher;

  /// From json
  factory PackagePublisher.fromJson(Map<String, dynamic> json) =>
      _$PackagePublisherFromJson(json);
}
