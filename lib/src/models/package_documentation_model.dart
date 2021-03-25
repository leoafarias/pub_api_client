import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_documentation_model.freezed.dart';
part 'package_documentation_model.g.dart';

/// Package Documentation Model
@freezed
class PackageDocumentation with _$PackageDocumentation {
  factory PackageDocumentation({
    required final String name,
    required final String latestStableVersion,
    @Default([]) final List<PackageDocumentationVersion> versions,
  }) = _PackageDocumentation;

  factory PackageDocumentation.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationFromJson(json);
}

/// Package Documentation Version Model
@freezed
class PackageDocumentationVersion with _$PackageDocumentationVersion {
  factory PackageDocumentationVersion({
    required final String version,
    required final String status,
    required final bool hasDocumentation,
  }) = _PackageDocumentationVersion;

  factory PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationVersionFromJson(json);
}
