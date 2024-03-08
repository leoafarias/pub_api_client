import 'package:dart_mappable/dart_mappable.dart';

part 'package_score_card.mapper.dart';

@MappableClass()
class PackageScoreCard with PackageScoreCardMappable {
  final String packageName;
  final String packageVersion;
  final String runtimeVersion;
  final DateTime updated;
  final DartdocReport? dartdocReport;
  final PanaReport? panaReport;
  final String? taskStatus;

  PackageScoreCard({
    required this.packageName,
    required this.packageVersion,
    required this.runtimeVersion,
    required this.updated,
    required this.dartdocReport,
    required this.panaReport,
    required this.taskStatus,
  });

  static const fromMap = PackageScoreCardMapper.fromMap;
  static const fromJson = PackageScoreCardMapper.fromJson;
}

@MappableClass()
class DartdocReport with DartdocReportMappable {
  final String? reportStatus;

  DartdocReport({
    required this.reportStatus,
  });

  static const fromMap = DartdocReportMapper.fromMap;
  static const fromJson = DartdocReportMapper.fromJson;
}

@MappableClass()
class PanaReport with PanaReportMappable {
  final DateTime? timestamp;
  final PanaRuntimeInfo? panaRuntimeInfo;
  final String? reportStatus;
  final List<String>? derivedTags;
  final List<String>? allDependencies;
  final List<License>? licenses;
  final Report? report;
  final Result? result;
  final List<dynamic>? screenshots;
  final List<dynamic>? urlProblems;

  PanaReport({
    required this.timestamp,
    required this.panaRuntimeInfo,
    required this.reportStatus,
    required this.derivedTags,
    required this.allDependencies,
    required this.licenses,
    required this.report,
    required this.result,
    required this.screenshots,
    required this.urlProblems,
  });

  static const fromMap = PanaReportMapper.fromMap;
  static const fromJson = PanaReportMapper.fromJson;
}

@MappableClass()
class License with LicenseMappable {
  final String? path;
  final String? spdxIdentifier;

  License({
    required this.path,
    required this.spdxIdentifier,
  });

  static const fromMap = LicenseMapper.fromMap;
  static const fromJson = LicenseMapper.fromJson;
}

@MappableClass()
class PanaRuntimeInfo with PanaRuntimeInfoMappable {
  final String? panaVersion;
  final String? sdkVersion;
  final FlutterVersions? flutterVersions;

  PanaRuntimeInfo({
    required this.panaVersion,
    required this.sdkVersion,
    required this.flutterVersions,
  });

  static const fromMap = PanaRuntimeInfoMapper.fromMap;
  static const fromJson = PanaRuntimeInfoMapper.fromJson;
}

@MappableClass()
class FlutterVersions with FlutterVersionsMappable {
  final String? frameworkVersion;
  final String? channel;
  final String? repositoryUrl;
  final String? frameworkRevision;
  final String? frameworkCommitDate;
  final String? engineRevision;
  final String? dartSdkVersion;
  final String? devToolsVersion;
  final String? flutterVersion;
  final String? flutterRoot;

  FlutterVersions({
    required this.frameworkVersion,
    required this.channel,
    required this.repositoryUrl,
    required this.frameworkRevision,
    required this.frameworkCommitDate,
    required this.engineRevision,
    required this.dartSdkVersion,
    required this.devToolsVersion,
    required this.flutterVersion,
    required this.flutterRoot,
  });

  static const fromMap = FlutterVersionsMapper.fromMap;
  static const fromJson = FlutterVersionsMapper.fromJson;
}

@MappableClass()
class Report with ReportMappable {
  final List<Section>? sections;

  Report({
    required this.sections,
  });

  static const fromMap = ReportMapper.fromMap;
  static const fromJson = ReportMapper.fromJson;
}

@MappableClass()
class Section with SectionMappable {
  final String? id;
  final String? title;
  final int? grantedPoints;
  final int? maxPoints;
  final String? status;
  final String? summary;

  Section({
    required this.id,
    required this.title,
    required this.grantedPoints,
    required this.maxPoints,
    required this.status,
    required this.summary,
  });

  static const fromMap = SectionMapper.fromMap;
  static const fromJson = SectionMapper.fromJson;
}

@MappableClass()
class Result with ResultMappable {
  final String repositoryUrl;
  final String issueTrackerUrl;
  final Repository repository;
  final int grantedPoints;
  final int maxPoints;

  Result({
    required this.repositoryUrl,
    required this.issueTrackerUrl,
    required this.repository,
    required this.grantedPoints,
    required this.maxPoints,
  });

  static const fromMap = ResultMapper.fromMap;
  static const fromJson = ResultMapper.fromJson;
}

@MappableClass()
class Repository with RepositoryMappable {
  final String? provider;
  final String? host;
  final String? repository;
  final String? branch;

  Repository({
    required this.provider,
    required this.host,
    required this.repository,
    required this.branch,
  });
}
