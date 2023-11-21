import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_options_model.freezed.dart';
part 'package_options_model.g.dart';

/// Package Options Model
@freezed
class PackageOptions with _$PackageOptions {
  const factory PackageOptions({
    required bool isDiscontinued,
    required bool isUnlisted,
    String? replacedBy,
  }) = _PackageOptions;

  /// From json
  factory PackageOptions.fromJson(Map<String, dynamic> json) =>
      _$PackageOptionsFromJson(json);
}
