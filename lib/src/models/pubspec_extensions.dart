import 'package:pubspec/pubspec.dart';
import 'package:yaml/yaml.dart';

/// {@template pubspec_extensions}
/// Extensions on [PubSpec] to provide additional functionality.
///
/// Following the pubspec file definition on dart.dev
/// https://dart.dev/tools/pub/pubspec
/// {@endtemplate}
extension PubspecExtensions on PubSpec {
  /// Optional. URL pointing to the package's source code repository.
  String? repository() => unParsedYaml?['repository'];

  /// Optional. URL pointing to an issue tracker for the package.
  String? issueTracker() => unParsedYaml?['issue_tracker'];

  /// Optional. List of URLs where users can sponsor development of the package.
  YamlList? funding() => unParsedYaml?['funding'];

  /// Optional. Specify files to ignore when conducting a pre-publishing search
  /// for potential leaks of secrets.
  YamlList? falseSecrets() => unParsedYaml?['false_secrets'];

  /// Optional. Specify a list of screenshot files to display on pub.dev
  List<Screenshot>? screenshots() {
    final screenShotList = unParsedYaml?['screenshots'];
    if (screenShotList == null) {
      return null;
    }
    final List<Screenshot> screenshots = [];
    for (final screenShot in screenShotList) {
      screenshots.add(Screenshot.fromJson(screenShot));
    }
    return screenshots;
  }

  /// Optional field to list the topics that this packages belongs to.
  YamlList? topics() => unParsedYaml?['topics'];

  /// Optional. List of ignored security advisories.
  YamlList? ignoredAdvisories() => unParsedYaml?['ignored_advisories'];
}

/// {@template screenshot}
/// A screenshot of the package to display on pub.dev.
/// {@endtemplate}
class Screenshot {
  const Screenshot(this.path, this.description);

  final String path;
  final String description;

  factory Screenshot.fromJson(Map json) => Screenshot(
        json['path'] as String,
        json['description'] as String,
      );

  @override
  String toString() => 'Screenshot(path: $path, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Screenshot &&
        other.path == path &&
        other.description == description;
  }

  @override
  int get hashCode => path.hashCode ^ description.hashCode;
}
