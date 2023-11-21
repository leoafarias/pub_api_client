import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pubspec/pubspec.dart';

part 'pub_package_model.freezed.dart';
part 'pub_package_model.g.dart';

/// Package Model
@freezed
class PubPackage with _$PubPackage {
  const PubPackage._();

  const factory PubPackage({
    required String name,
    required PackageVersion latest,
    required List<PackageVersion> versions,
  }) = _PubPackage;

  String get version => latest.version;
  String get description => latestPubspec.description ?? '';
  String get url => 'https://pub.dev/packages/$name';
  String get changelogUrl => '$url/changelog';
  PubSpec get latestPubspec => latest.pubspec;

  /// From json
  factory PubPackage.fromJson(Map<String, dynamic> json) =>
      _$PubPackageFromJson(json);
}

/// Package Version Model
@freezed
class PackageVersion with _$PackageVersion {
  const factory PackageVersion({
    required String version,
    required PubSpec pubspec,
    String? archiveUrl,
    required DateTime published,
  }) = _PackageVersion;

  /// From json
  factory PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageVersionFromJson(json);
}
