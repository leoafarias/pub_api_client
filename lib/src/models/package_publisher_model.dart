import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_publisher_model.freezed.dart';
part 'package_publisher_model.g.dart';

@freezed
abstract class PackagePublisher with _$PackagePublisher {
  factory PackagePublisher({
    final String publisherId,
  }) = _PackagePublisher;

  factory PackagePublisher.fromJson(Map<String, dynamic> json) =>
      _$PackagePublisherFromJson(json);
}
