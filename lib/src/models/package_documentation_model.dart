import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_documentation_model.freezed.dart';
part 'package_documentation_model.g.dart';

@freezed
abstract class PackageDocumentation with _$PackageDocumentation {
  factory PackageDocumentation({
    final String name,
    final String latestStableVersion,
    final List<PackageDocumentationVersion> versions,
  }) = _PackageDocumentation;

  factory PackageDocumentation.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationFromJson(json);
}

@freezed
abstract class PackageDocumentationVersion with _$PackageDocumentationVersion {
  factory PackageDocumentationVersion({
    final String version,
    final String status,
    final bool hasDocumentation,
  }) = _PackageDocumentationVersion;

  factory PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationVersionFromJson(json);
}
