import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pubspec_parse/pubspec_parse.dart';

part 'pub_package_model.freezed.dart';
part 'pub_package_model.g.dart';

/// Package Model
@freezed
abstract class PubPackage implements _$PubPackage {
  const PubPackage._();

  factory PubPackage({
    required String name,
    required PackageVersion latest,
    @Default([]) List<PackageVersion> versions,
  }) = _PubPackage;

  factory PubPackage.fromJson(Map<String, dynamic> json) =>
      _$PubPackageFromJson(json);

  String get version => latestPubspec.version.toString();
  String get description => latestPubspec.description ?? '';
  String get url => 'https://pub.dev/packages/$name';
  String get changelogUrl => '$url/changelog';
  Pubspec get latestPubspec => latest.pubspec;
}

/// Package Version Model
@freezed
abstract class PackageVersion with _$PackageVersion {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PackageVersion({
    required String version,
    required Pubspec pubspec,
    required String archiveUrl,
    required DateTime published,
  }) = _PackageVersion;

  factory PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageVersionFromJson(json);
}
