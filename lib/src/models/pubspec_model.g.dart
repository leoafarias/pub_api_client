// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pubspec _$_$_PubspecFromJson(Map<String, dynamic> json) {
  return _$_Pubspec(
    dependencies: json['dependencies'] as Map<String, dynamic>,
    dependencyOverrides: json['dependency_overrides'] as Map<String, dynamic>,
    description: json['description'] as String,
    devDependencies: json['dev_dependencies'] as Map<String, dynamic>,
    documentation: json['documentation'] as String,
    environment: (json['environment'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    executables: json['executables'] as Map<String, dynamic>,
    homepage: json['homepage'] as String,
    issueTracker: json['issue_tracker'] as String,
    name: json['name'] as String,
    publishTo: json['publish_to'] as String,
    repository: json['repository'] as String,
    version: json['version'] as String,
  );
}

Map<String, dynamic> _$_$_PubspecToJson(_$_Pubspec instance) =>
    <String, dynamic>{
      'dependencies': instance.dependencies,
      'dependency_overrides': instance.dependencyOverrides,
      'description': instance.description,
      'dev_dependencies': instance.devDependencies,
      'documentation': instance.documentation,
      'environment': instance.environment,
      'executables': instance.executables,
      'homepage': instance.homepage,
      'issue_tracker': instance.issueTracker,
      'name': instance.name,
      'publish_to': instance.publishTo,
      'repository': instance.repository,
      'version': instance.version,
    };

_$_Dependency _$_$_DependencyFromJson(Map<String, dynamic> json) {
  return _$_Dependency(
    sdk: json['sdk'] as String,
    version: json['version'] as String,
    hosted: json['hosted'] == null
        ? null
        : Hosted.fromJson(json['hosted'] as Map<String, dynamic>),
    git: json['git'],
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$_$_DependencyToJson(_$_Dependency instance) =>
    <String, dynamic>{
      'sdk': instance.sdk,
      'version': instance.version,
      'hosted': instance.hosted,
      'git': instance.git,
      'path': instance.path,
    };

_$_GitClass _$_$_GitClassFromJson(Map<String, dynamic> json) {
  return _$_GitClass(
    path: json['path'] as String,
    ref: json['ref'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_GitClassToJson(_$_GitClass instance) =>
    <String, dynamic>{
      'path': instance.path,
      'ref': instance.ref,
      'url': instance.url,
    };

_$_Hosted _$_$_HostedFromJson(Map<String, dynamic> json) {
  return _$_Hosted(
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_HostedToJson(_$_Hosted instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
