import 'dart:convert';

import 'package:collection/collection.dart';

class PackageScoreCard {
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

  PackageScoreCard copyWith({
    String? packageName,
    String? packageVersion,
    String? runtimeVersion,
    DateTime? updated,
    DartdocReport? dartdocReport,
    PanaReport? panaReport,
    String? taskStatus,
  }) =>
      PackageScoreCard(
        packageName: packageName ?? this.packageName,
        packageVersion: packageVersion ?? this.packageVersion,
        runtimeVersion: runtimeVersion ?? this.runtimeVersion,
        updated: updated ?? this.updated,
        dartdocReport: dartdocReport ?? this.dartdocReport,
        panaReport: panaReport ?? this.panaReport,
        taskStatus: taskStatus ?? this.taskStatus,
      );

  Map<String, dynamic> toMap() => {
        'packageName': packageName,
        'packageVersion': packageVersion,
        'runtimeVersion': runtimeVersion,
        'updated': updated.millisecondsSinceEpoch,
        'dartdocReport': dartdocReport?.toMap(),
        'panaReport': panaReport?.toMap(),
        'taskStatus': taskStatus,
      };

  factory PackageScoreCard.fromMap(Map<String, dynamic> map) =>
      PackageScoreCard(
        packageName: map['packageName'] ?? '',
        packageVersion: map['packageVersion'] ?? '',
        runtimeVersion: map['runtimeVersion'] ?? '',
        updated: DateTime.parse(map['updated']),
        dartdocReport: map['dartdocReport'] != null
            ? DartdocReport.fromMap(map['dartdocReport'])
            : null,
        panaReport: map['panaReport'] != null
            ? PanaReport.fromMap(map['panaReport'])
            : null,
        taskStatus: map['taskStatus'],
      );

  String toJson() => json.encode(toMap());

  factory PackageScoreCard.fromJson(String source) =>
      PackageScoreCard.fromMap(json.decode(source));

  @override
  String toString() =>
      'PackageScoreCard(packageName: $packageName, packageVersion: $packageVersion, runtimeVersion: $runtimeVersion, updated: $updated, dartdocReport: $dartdocReport, panaReport: $panaReport, taskStatus: $taskStatus)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PackageScoreCard &&
        other.packageName == packageName &&
        other.packageVersion == packageVersion &&
        other.runtimeVersion == runtimeVersion &&
        other.updated == updated &&
        other.dartdocReport == dartdocReport &&
        other.panaReport == panaReport &&
        other.taskStatus == taskStatus;
  }

  @override
  int get hashCode =>
      packageName.hashCode ^
      packageVersion.hashCode ^
      runtimeVersion.hashCode ^
      updated.hashCode ^
      dartdocReport.hashCode ^
      panaReport.hashCode ^
      taskStatus.hashCode;
}

class DartdocReport {
  final String? reportStatus;

  DartdocReport({
    required this.reportStatus,
  });

  DartdocReport copyWith({
    String? reportStatus,
  }) =>
      DartdocReport(
        reportStatus: reportStatus ?? this.reportStatus,
      );

  Map<String, dynamic> toMap() => {
        'reportStatus': reportStatus,
      };

  factory DartdocReport.fromMap(Map<String, dynamic> map) => DartdocReport(
        reportStatus: map['reportStatus'],
      );

  String toJson() => json.encode(toMap());

  factory DartdocReport.fromJson(String source) =>
      DartdocReport.fromMap(json.decode(source));

  @override
  String toString() => 'DartdocReport(reportStatus: $reportStatus)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DartdocReport && other.reportStatus == reportStatus;
  }

  @override
  int get hashCode => reportStatus.hashCode;
}

class PanaReport {
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

  PanaReport copyWith({
    DateTime? timestamp,
    PanaRuntimeInfo? panaRuntimeInfo,
    String? reportStatus,
    List<String>? derivedTags,
    List<String>? allDependencies,
    List<License>? licenses,
    Report? report,
    Result? result,
    List<dynamic>? screenshots,
    List<dynamic>? urlProblems,
  }) =>
      PanaReport(
        timestamp: timestamp ?? this.timestamp,
        panaRuntimeInfo: panaRuntimeInfo ?? this.panaRuntimeInfo,
        reportStatus: reportStatus ?? this.reportStatus,
        derivedTags: derivedTags ?? this.derivedTags,
        allDependencies: allDependencies ?? this.allDependencies,
        licenses: licenses ?? this.licenses,
        report: report ?? this.report,
        result: result ?? this.result,
        screenshots: screenshots ?? this.screenshots,
        urlProblems: urlProblems ?? this.urlProblems,
      );

  Map<String, dynamic> toMap() => {
        'timestamp': timestamp?.millisecondsSinceEpoch,
        'panaRuntimeInfo': panaRuntimeInfo?.toMap(),
        'reportStatus': reportStatus,
        'derivedTags': derivedTags,
        'allDependencies': allDependencies,
        'licenses': licenses?.map((x) => x.toMap()).toList(),
        'report': report?.toMap(),
        'result': result?.toMap(),
        'screenshots': screenshots,
        'urlProblems': urlProblems,
      };

  factory PanaReport.fromMap(Map<String, dynamic> map) => PanaReport(
        timestamp:
            map['timestamp'] != null ? DateTime.parse(map['timestamp']) : null,
        panaRuntimeInfo: map['panaRuntimeInfo'] != null
            ? PanaRuntimeInfo.fromMap(map['panaRuntimeInfo'])
            : null,
        reportStatus: map['reportStatus'],
        derivedTags: List<String>.from(map['derivedTags']),
        allDependencies: List<String>.from(map['allDependencies']),
        licenses: map['licenses'] != null
            ? (map['licenses'] as List<dynamic>)
                .map((e) => License.fromMap(e as Map<String, dynamic>))
                .toList()
            : null,
        report: map['report'] != null ? Report.fromMap(map['report']) : null,
        result: map['result'] != null ? Result.fromMap(map['result']) : null,
        screenshots: List<dynamic>.from(map['screenshots']),
        urlProblems: List<dynamic>.from(map['urlProblems']),
      );

  String toJson() => json.encode(toMap());

  factory PanaReport.fromJson(String source) =>
      PanaReport.fromMap(json.decode(source));

  @override
  String toString() =>
      'PanaReport(timestamp: $timestamp, panaRuntimeInfo: $panaRuntimeInfo, reportStatus: $reportStatus, derivedTags: $derivedTags, allDependencies: $allDependencies, licenses: $licenses, report: $report, result: $result, screenshots: $screenshots, urlProblems: $urlProblems)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PanaReport &&
        other.timestamp == timestamp &&
        other.panaRuntimeInfo == panaRuntimeInfo &&
        other.reportStatus == reportStatus &&
        listEquals(other.derivedTags, derivedTags) &&
        listEquals(other.allDependencies, allDependencies) &&
        listEquals(other.licenses, licenses) &&
        other.report == report &&
        other.result == result &&
        listEquals(other.screenshots, screenshots) &&
        listEquals(other.urlProblems, urlProblems);
  }

  @override
  int get hashCode =>
      timestamp.hashCode ^
      panaRuntimeInfo.hashCode ^
      reportStatus.hashCode ^
      derivedTags.hashCode ^
      allDependencies.hashCode ^
      licenses.hashCode ^
      report.hashCode ^
      result.hashCode ^
      screenshots.hashCode ^
      urlProblems.hashCode;
}

class License {
  final String? path;
  final String? spdxIdentifier;

  License({
    required this.path,
    required this.spdxIdentifier,
  });

  License copyWith({
    String? path,
    String? spdxIdentifier,
  }) =>
      License(
        path: path ?? this.path,
        spdxIdentifier: spdxIdentifier ?? this.spdxIdentifier,
      );

  Map<String, dynamic> toMap() => {
        'path': path,
        'spdxIdentifier': spdxIdentifier,
      };

  factory License.fromMap(Map<String, dynamic> map) => License(
        path: map['path'],
        spdxIdentifier: map['spdxIdentifier'],
      );

  String toJson() => json.encode(toMap());

  factory License.fromJson(String source) =>
      License.fromMap(json.decode(source));

  @override
  String toString() => 'License(path: $path, spdxIdentifier: $spdxIdentifier)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is License &&
        other.path == path &&
        other.spdxIdentifier == spdxIdentifier;
  }

  @override
  int get hashCode => path.hashCode ^ spdxIdentifier.hashCode;
}

class PanaRuntimeInfo {
  final String? panaVersion;
  final String? sdkVersion;
  final FlutterVersions? flutterVersions;

  PanaRuntimeInfo({
    required this.panaVersion,
    required this.sdkVersion,
    required this.flutterVersions,
  });

  PanaRuntimeInfo copyWith({
    String? panaVersion,
    String? sdkVersion,
    FlutterVersions? flutterVersions,
  }) =>
      PanaRuntimeInfo(
        panaVersion: panaVersion ?? this.panaVersion,
        sdkVersion: sdkVersion ?? this.sdkVersion,
        flutterVersions: flutterVersions ?? this.flutterVersions,
      );

  Map<String, dynamic> toMap() => {
        'panaVersion': panaVersion,
        'sdkVersion': sdkVersion,
        'flutterVersions': flutterVersions?.toMap(),
      };

  factory PanaRuntimeInfo.fromMap(Map<String, dynamic> map) => PanaRuntimeInfo(
        panaVersion: map['panaVersion'],
        sdkVersion: map['sdkVersion'],
        flutterVersions: map['flutterVersions'] != null
            ? FlutterVersions.fromMap(map['flutterVersions'])
            : null,
      );

  String toJson() => json.encode(toMap());

  factory PanaRuntimeInfo.fromJson(String source) =>
      PanaRuntimeInfo.fromMap(json.decode(source));

  @override
  String toString() =>
      'PanaRuntimeInfo(panaVersion: $panaVersion, sdkVersion: $sdkVersion, flutterVersions: $flutterVersions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PanaRuntimeInfo &&
        other.panaVersion == panaVersion &&
        other.sdkVersion == sdkVersion &&
        other.flutterVersions == flutterVersions;
  }

  @override
  int get hashCode =>
      panaVersion.hashCode ^ sdkVersion.hashCode ^ flutterVersions.hashCode;
}

class FlutterVersions {
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

  FlutterVersions copyWith({
    String? frameworkVersion,
    String? channel,
    String? repositoryUrl,
    String? frameworkRevision,
    String? frameworkCommitDate,
    String? engineRevision,
    String? dartSdkVersion,
    String? devToolsVersion,
    String? flutterVersion,
    String? flutterRoot,
  }) =>
      FlutterVersions(
        frameworkVersion: frameworkVersion ?? this.frameworkVersion,
        channel: channel ?? this.channel,
        repositoryUrl: repositoryUrl ?? this.repositoryUrl,
        frameworkRevision: frameworkRevision ?? this.frameworkRevision,
        frameworkCommitDate: frameworkCommitDate ?? this.frameworkCommitDate,
        engineRevision: engineRevision ?? this.engineRevision,
        dartSdkVersion: dartSdkVersion ?? this.dartSdkVersion,
        devToolsVersion: devToolsVersion ?? this.devToolsVersion,
        flutterVersion: flutterVersion ?? this.flutterVersion,
        flutterRoot: flutterRoot ?? this.flutterRoot,
      );

  Map<String, dynamic> toMap() => {
        'frameworkVersion': frameworkVersion,
        'channel': channel,
        'repositoryUrl': repositoryUrl,
        'frameworkRevision': frameworkRevision,
        'frameworkCommitDate': frameworkCommitDate,
        'engineRevision': engineRevision,
        'dartSdkVersion': dartSdkVersion,
        'devToolsVersion': devToolsVersion,
        'flutterVersion': flutterVersion,
        'flutterRoot': flutterRoot,
      };

  factory FlutterVersions.fromMap(Map<String, dynamic> map) => FlutterVersions(
        frameworkVersion: map['frameworkVersion'],
        channel: map['channel'],
        repositoryUrl: map['repositoryUrl'],
        frameworkRevision: map['frameworkRevision'],
        frameworkCommitDate: map['frameworkCommitDate'],
        engineRevision: map['engineRevision'],
        dartSdkVersion: map['dartSdkVersion'],
        devToolsVersion: map['devToolsVersion'],
        flutterVersion: map['flutterVersion'],
        flutterRoot: map['flutterRoot'],
      );

  String toJson() => json.encode(toMap());

  factory FlutterVersions.fromJson(String source) =>
      FlutterVersions.fromMap(json.decode(source));

  @override
  String toString() =>
      'FlutterVersions(frameworkVersion: $frameworkVersion, channel: $channel, repositoryUrl: $repositoryUrl, frameworkRevision: $frameworkRevision, frameworkCommitDate: $frameworkCommitDate, engineRevision: $engineRevision, dartSdkVersion: $dartSdkVersion, devToolsVersion: $devToolsVersion, flutterVersion: $flutterVersion, flutterRoot: $flutterRoot)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlutterVersions &&
        other.frameworkVersion == frameworkVersion &&
        other.channel == channel &&
        other.repositoryUrl == repositoryUrl &&
        other.frameworkRevision == frameworkRevision &&
        other.frameworkCommitDate == frameworkCommitDate &&
        other.engineRevision == engineRevision &&
        other.dartSdkVersion == dartSdkVersion &&
        other.devToolsVersion == devToolsVersion &&
        other.flutterVersion == flutterVersion &&
        other.flutterRoot == flutterRoot;
  }

  @override
  int get hashCode =>
      frameworkVersion.hashCode ^
      channel.hashCode ^
      repositoryUrl.hashCode ^
      frameworkRevision.hashCode ^
      frameworkCommitDate.hashCode ^
      engineRevision.hashCode ^
      dartSdkVersion.hashCode ^
      devToolsVersion.hashCode ^
      flutterVersion.hashCode ^
      flutterRoot.hashCode;
}

class Report {
  final List<Section>? sections;

  Report({
    required this.sections,
  });

  Report copyWith({
    List<Section>? sections,
  }) =>
      Report(
        sections: sections ?? this.sections,
      );

  Map<String, dynamic> toMap() => {
        'sections': sections?.map((x) => x.toMap()).toList(),
      };

  factory Report.fromMap(Map<String, dynamic> map) => Report(
        sections: map['sections'] != null
            ? (map['sections'] as List<dynamic>)
                // ignore: inference_failure_on_untyped_parameter
                .map((e) => Section.fromMap(e as Map<String, dynamic>))
                .toList()
            : null,
      );

  String toJson() => json.encode(toMap());

  factory Report.fromJson(String source) => Report.fromMap(json.decode(source));

  @override
  String toString() => 'Report(sections: $sections)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Report && listEquals(other.sections, sections);
  }

  @override
  int get hashCode => sections.hashCode;
}

class Section {
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

  Section copyWith({
    String? id,
    String? title,
    int? grantedPoints,
    int? maxPoints,
    String? status,
    String? summary,
  }) =>
      Section(
        id: id ?? this.id,
        title: title ?? this.title,
        grantedPoints: grantedPoints ?? this.grantedPoints,
        maxPoints: maxPoints ?? this.maxPoints,
        status: status ?? this.status,
        summary: summary ?? this.summary,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'grantedPoints': grantedPoints,
        'maxPoints': maxPoints,
        'status': status,
        'summary': summary,
      };

  factory Section.fromMap(Map<String, dynamic> map) => Section(
        id: map['id'],
        title: map['title'],
        grantedPoints: map['grantedPoints']?.toInt(),
        maxPoints: map['maxPoints']?.toInt(),
        status: map['status'],
        summary: map['summary'],
      );

  String toJson() => json.encode(toMap());

  factory Section.fromJson(String source) =>
      Section.fromMap(json.decode(source));

  @override
  String toString() =>
      'Section(id: $id, title: $title, grantedPoints: $grantedPoints, maxPoints: $maxPoints, status: $status, summary: $summary)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Section &&
        other.id == id &&
        other.title == title &&
        other.grantedPoints == grantedPoints &&
        other.maxPoints == maxPoints &&
        other.status == status &&
        other.summary == summary;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      grantedPoints.hashCode ^
      maxPoints.hashCode ^
      status.hashCode ^
      summary.hashCode;
}

class Result {
  final String? repositoryUrl;
  final String? issueTrackerUrl;
  final Repository? repository;
  final int? grantedPoints;
  final int? maxPoints;

  Result({
    required this.repositoryUrl,
    required this.issueTrackerUrl,
    required this.repository,
    required this.grantedPoints,
    required this.maxPoints,
  });

  Result copyWith({
    String? repositoryUrl,
    String? issueTrackerUrl,
    Repository? repository,
    int? grantedPoints,
    int? maxPoints,
  }) =>
      Result(
        repositoryUrl: repositoryUrl ?? this.repositoryUrl,
        issueTrackerUrl: issueTrackerUrl ?? this.issueTrackerUrl,
        repository: repository ?? this.repository,
        grantedPoints: grantedPoints ?? this.grantedPoints,
        maxPoints: maxPoints ?? this.maxPoints,
      );

  Map<String, dynamic> toMap() => {
        'repositoryUrl': repositoryUrl,
        'issueTrackerUrl': issueTrackerUrl,
        'repository': repository?.toMap(),
        'grantedPoints': grantedPoints,
        'maxPoints': maxPoints,
      };

  factory Result.fromMap(Map<String, dynamic> map) => Result(
        repositoryUrl: map['repositoryUrl'],
        issueTrackerUrl: map['issueTrackerUrl'],
        repository: map['repository'] != null
            ? Repository.fromMap(map['repository'])
            : null,
        grantedPoints: map['grantedPoints']?.toInt(),
        maxPoints: map['maxPoints']?.toInt(),
      );

  String toJson() => json.encode(toMap());

  factory Result.fromJson(String source) => Result.fromMap(json.decode(source));

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'Result(repositoryUrl: $repositoryUrl, issueTrackerUrl: $issueTrackerUrl, repository: $repository, grantedPoints: $grantedPoints, maxPoints: $maxPoints)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Result &&
        other.repositoryUrl == repositoryUrl &&
        other.issueTrackerUrl == issueTrackerUrl &&
        other.repository == repository &&
        other.grantedPoints == grantedPoints &&
        other.maxPoints == maxPoints;
  }

  @override
  int get hashCode =>
      repositoryUrl.hashCode ^
      issueTrackerUrl.hashCode ^
      repository.hashCode ^
      grantedPoints.hashCode ^
      maxPoints.hashCode;
}

class Repository {
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

  Repository copyWith({
    String? provider,
    String? host,
    String? repository,
    String? branch,
  }) =>
      Repository(
        provider: provider ?? this.provider,
        host: host ?? this.host,
        repository: repository ?? this.repository,
        branch: branch ?? this.branch,
      );

  Map<String, dynamic> toMap() => {
        'provider': provider,
        'host': host,
        'repository': repository,
        'branch': branch,
      };

  factory Repository.fromMap(Map<String, dynamic> map) => Repository(
        provider: map['provider'],
        host: map['host'],
        repository: map['repository'],
        branch: map['branch'],
      );

  String toJson() => json.encode(toMap());

  factory Repository.fromJson(String source) =>
      Repository.fromMap(json.decode(source));

  @override
  String toString() =>
      'Repository(provider: $provider, host: $host, repository: $repository, branch: $branch)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Repository &&
        other.provider == provider &&
        other.host == host &&
        other.repository == repository &&
        other.branch == branch;
  }

  @override
  int get hashCode =>
      provider.hashCode ^ host.hashCode ^ repository.hashCode ^ branch.hashCode;
}
