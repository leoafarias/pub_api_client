import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec_model.freezed.dart';
part 'pubspec_model.g.dart';

@freezed
abstract class PubSpec with _$PubSpec {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PubSpec({
    Map<String, dynamic> dependencies,
    Map<String, dynamic> dependencyOverrides,
    String description,
    Map<String, dynamic> devDependencies,
    String documentation,
    Map<String, String> environment,
    Map<String, dynamic> executables,
    String homepage,
    String issueTracker,
    String name,
    String publishTo,
    String repository,
    String version,
  }) = _Pubspec;
  factory PubSpec.fromJson(Map<String, dynamic> json) =>
      _$PubSpecFromJson(json);
}

@freezed
abstract class Dependency with _$Dependency {
  factory Dependency({
    String sdk,
    String version,
    Hosted hosted,
    dynamic git,
    String path,
  }) = _Dependency;
  factory Dependency.fromJson(Map<String, dynamic> json) =>
      _$DependencyFromJson(json);
}

@freezed
abstract class GitClass with _$GitClass {
  factory GitClass({
    String path,
    String ref,
    String url,
  }) = _GitClass;
  factory GitClass.fromJson(Map<String, dynamic> json) =>
      _$GitClassFromJson(json);
}

@freezed
abstract class Hosted with _$Hosted {
  factory Hosted({
    String name,
    String url,
  }) = _Hosted;

  factory Hosted.fromJson(Map<String, dynamic> json) => _$HostedFromJson(json);
}
