import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_options_model.freezed.dart';
part 'package_options_model.g.dart';

@freezed
abstract class PackageOptions with _$PackageOptions {
  factory PackageOptions({
    final bool isDiscontinued,
    final String replacedBy,
    final bool isUnlisted,
  }) = _PackageOptions;

  factory PackageOptions.fromJson(Map<String, dynamic> json) =>
      _$PackageOptionsFromJson(json);
}
