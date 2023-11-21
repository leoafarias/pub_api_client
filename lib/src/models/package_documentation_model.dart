import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_documentation_model.freezed.dart';
part 'package_documentation_model.g.dart';

/// Package Documentation Model
@freezed
class PackageDocumentation with _$PackageDocumentation {
  const factory PackageDocumentation({
    required String name,
    required List<PackageDocumentationVersion> versions,
  }) = _PackageDocumentation;

  /// From json
  factory PackageDocumentation.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationFromJson(json);
}

/// Package Documentation Version Model
@freezed
class PackageDocumentationVersion with _$PackageDocumentationVersion {
  const factory PackageDocumentationVersion({
    required String version,
    required String status,
    required bool hasDocumentation,
  }) = _PackageDocumentationVersion;

  /// From json
  factory PackageDocumentationVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageDocumentationVersionFromJson(json);
}
