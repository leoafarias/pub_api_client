import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pubspec_parse/pubspec_parse.dart';

part 'pub_package_model.freezed.dart';
part 'pub_package_model.g.dart';

@freezed
abstract class PubPackage implements _$PubPackage {
  const PubPackage._();

  factory PubPackage({
    String name,
    PackageVersion latest,
    List<PackageVersion> versions,
  }) = _PubPackage;

  factory PubPackage.fromJson(Map<String, dynamic> json) =>
      _$PubPackageFromJson(json);

  String get version => latestPubspec.version.toString();
  String get description => latestPubspec.description;
  String get url => 'https://pub.dev/packages/$name';
  String get changelogUrl => '$url/changelog';
  Pubspec get latestPubspec => versions.last.pubspec;
}

@freezed
abstract class PackageVersion with _$PackageVersion {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PackageVersion({
    String version,
    Pubspec pubspec,
    String archiveUrl,
    DateTime published,
  }) = _PackageVersion;

  factory PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageVersionFromJson(json);
}
