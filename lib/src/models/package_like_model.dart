import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_like_model.freezed.dart';
part 'package_like_model.g.dart';

/// Package like
@freezed
class PackageLike with _$PackageLike {
  const factory PackageLike({
    required String package,
    required bool liked,
  }) = _PackageLike;

  /// From json
  factory PackageLike.fromJson(Map<String, dynamic> json) =>
      _$PackageLikeFromJson(json);
}
