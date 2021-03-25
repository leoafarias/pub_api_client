import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_options_model.freezed.dart';
part 'package_options_model.g.dart';

/// Package Options Model
@freezed
class PackageOptions with _$PackageOptions {
  factory PackageOptions({
    @Default(false) final bool isDiscontinued,
    @Default(false) final bool isUnlisted,
    final String? replacedBy,
  }) = _PackageOptions;

  factory PackageOptions.fromJson(Map<String, dynamic> json) =>
      _$PackageOptionsFromJson(json);
}
