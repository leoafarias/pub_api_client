// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'package_score_card.dart';

class PackageScoreCardMapper extends ClassMapperBase<PackageScoreCard> {
  PackageScoreCardMapper._();

  static PackageScoreCardMapper? _instance;
  static PackageScoreCardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PackageScoreCardMapper._());
      DartdocReportMapper.ensureInitialized();
      PanaReportMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PackageScoreCard';

  static String _$packageName(PackageScoreCard v) => v.packageName;
  static const Field<PackageScoreCard, String> _f$packageName =
      Field('packageName', _$packageName);
  static String _$packageVersion(PackageScoreCard v) => v.packageVersion;
  static const Field<PackageScoreCard, String> _f$packageVersion =
      Field('packageVersion', _$packageVersion);
  static String _$runtimeVersion(PackageScoreCard v) => v.runtimeVersion;
  static const Field<PackageScoreCard, String> _f$runtimeVersion =
      Field('runtimeVersion', _$runtimeVersion);
  static DateTime _$updated(PackageScoreCard v) => v.updated;
  static const Field<PackageScoreCard, DateTime> _f$updated =
      Field('updated', _$updated);
  static DartdocReport? _$dartdocReport(PackageScoreCard v) => v.dartdocReport;
  static const Field<PackageScoreCard, DartdocReport> _f$dartdocReport =
      Field('dartdocReport', _$dartdocReport);
  static PanaReport? _$panaReport(PackageScoreCard v) => v.panaReport;
  static const Field<PackageScoreCard, PanaReport> _f$panaReport =
      Field('panaReport', _$panaReport);
  static String? _$taskStatus(PackageScoreCard v) => v.taskStatus;
  static const Field<PackageScoreCard, String> _f$taskStatus =
      Field('taskStatus', _$taskStatus);

  @override
  final MappableFields<PackageScoreCard> fields = const {
    #packageName: _f$packageName,
    #packageVersion: _f$packageVersion,
    #runtimeVersion: _f$runtimeVersion,
    #updated: _f$updated,
    #dartdocReport: _f$dartdocReport,
    #panaReport: _f$panaReport,
    #taskStatus: _f$taskStatus,
  };

  static PackageScoreCard _instantiate(DecodingData data) {
    return PackageScoreCard(
        packageName: data.dec(_f$packageName),
        packageVersion: data.dec(_f$packageVersion),
        runtimeVersion: data.dec(_f$runtimeVersion),
        updated: data.dec(_f$updated),
        dartdocReport: data.dec(_f$dartdocReport),
        panaReport: data.dec(_f$panaReport),
        taskStatus: data.dec(_f$taskStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static PackageScoreCard fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PackageScoreCard>(map);
  }

  static PackageScoreCard fromJson(String json) {
    return ensureInitialized().decodeJson<PackageScoreCard>(json);
  }
}

mixin PackageScoreCardMappable {
  String toJson() {
    return PackageScoreCardMapper.ensureInitialized()
        .encodeJson<PackageScoreCard>(this as PackageScoreCard);
  }

  Map<String, dynamic> toMap() {
    return PackageScoreCardMapper.ensureInitialized()
        .encodeMap<PackageScoreCard>(this as PackageScoreCard);
  }

  PackageScoreCardCopyWith<PackageScoreCard, PackageScoreCard, PackageScoreCard>
      get copyWith => _PackageScoreCardCopyWithImpl(
          this as PackageScoreCard, $identity, $identity);
  @override
  String toString() {
    return PackageScoreCardMapper.ensureInitialized()
        .stringifyValue(this as PackageScoreCard);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PackageScoreCardMapper.ensureInitialized()
                .isValueEqual(this as PackageScoreCard, other));
  }

  @override
  int get hashCode {
    return PackageScoreCardMapper.ensureInitialized()
        .hashValue(this as PackageScoreCard);
  }
}

extension PackageScoreCardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PackageScoreCard, $Out> {
  PackageScoreCardCopyWith<$R, PackageScoreCard, $Out>
      get $asPackageScoreCard =>
          $base.as((v, t, t2) => _PackageScoreCardCopyWithImpl(v, t, t2));
}

abstract class PackageScoreCardCopyWith<$R, $In extends PackageScoreCard, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  DartdocReportCopyWith<$R, DartdocReport, DartdocReport>? get dartdocReport;
  PanaReportCopyWith<$R, PanaReport, PanaReport>? get panaReport;
  $R call(
      {String? packageName,
      String? packageVersion,
      String? runtimeVersion,
      DateTime? updated,
      DartdocReport? dartdocReport,
      PanaReport? panaReport,
      String? taskStatus});
  PackageScoreCardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PackageScoreCardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PackageScoreCard, $Out>
    implements PackageScoreCardCopyWith<$R, PackageScoreCard, $Out> {
  _PackageScoreCardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PackageScoreCard> $mapper =
      PackageScoreCardMapper.ensureInitialized();
  @override
  DartdocReportCopyWith<$R, DartdocReport, DartdocReport>? get dartdocReport =>
      $value.dartdocReport?.copyWith.$chain((v) => call(dartdocReport: v));
  @override
  PanaReportCopyWith<$R, PanaReport, PanaReport>? get panaReport =>
      $value.panaReport?.copyWith.$chain((v) => call(panaReport: v));
  @override
  $R call(
          {String? packageName,
          String? packageVersion,
          String? runtimeVersion,
          DateTime? updated,
          Object? dartdocReport = $none,
          Object? panaReport = $none,
          Object? taskStatus = $none}) =>
      $apply(FieldCopyWithData({
        if (packageName != null) #packageName: packageName,
        if (packageVersion != null) #packageVersion: packageVersion,
        if (runtimeVersion != null) #runtimeVersion: runtimeVersion,
        if (updated != null) #updated: updated,
        if (dartdocReport != $none) #dartdocReport: dartdocReport,
        if (panaReport != $none) #panaReport: panaReport,
        if (taskStatus != $none) #taskStatus: taskStatus
      }));
  @override
  PackageScoreCard $make(CopyWithData data) => PackageScoreCard(
      packageName: data.get(#packageName, or: $value.packageName),
      packageVersion: data.get(#packageVersion, or: $value.packageVersion),
      runtimeVersion: data.get(#runtimeVersion, or: $value.runtimeVersion),
      updated: data.get(#updated, or: $value.updated),
      dartdocReport: data.get(#dartdocReport, or: $value.dartdocReport),
      panaReport: data.get(#panaReport, or: $value.panaReport),
      taskStatus: data.get(#taskStatus, or: $value.taskStatus));

  @override
  PackageScoreCardCopyWith<$R2, PackageScoreCard, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PackageScoreCardCopyWithImpl($value, $cast, t);
}

class DartdocReportMapper extends ClassMapperBase<DartdocReport> {
  DartdocReportMapper._();

  static DartdocReportMapper? _instance;
  static DartdocReportMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DartdocReportMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DartdocReport';

  static String? _$reportStatus(DartdocReport v) => v.reportStatus;
  static const Field<DartdocReport, String> _f$reportStatus =
      Field('reportStatus', _$reportStatus);

  @override
  final MappableFields<DartdocReport> fields = const {
    #reportStatus: _f$reportStatus,
  };

  static DartdocReport _instantiate(DecodingData data) {
    return DartdocReport(reportStatus: data.dec(_f$reportStatus));
  }

  @override
  final Function instantiate = _instantiate;

  static DartdocReport fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DartdocReport>(map);
  }

  static DartdocReport fromJson(String json) {
    return ensureInitialized().decodeJson<DartdocReport>(json);
  }
}

mixin DartdocReportMappable {
  String toJson() {
    return DartdocReportMapper.ensureInitialized()
        .encodeJson<DartdocReport>(this as DartdocReport);
  }

  Map<String, dynamic> toMap() {
    return DartdocReportMapper.ensureInitialized()
        .encodeMap<DartdocReport>(this as DartdocReport);
  }

  DartdocReportCopyWith<DartdocReport, DartdocReport, DartdocReport>
      get copyWith => _DartdocReportCopyWithImpl(
          this as DartdocReport, $identity, $identity);
  @override
  String toString() {
    return DartdocReportMapper.ensureInitialized()
        .stringifyValue(this as DartdocReport);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            DartdocReportMapper.ensureInitialized()
                .isValueEqual(this as DartdocReport, other));
  }

  @override
  int get hashCode {
    return DartdocReportMapper.ensureInitialized()
        .hashValue(this as DartdocReport);
  }
}

extension DartdocReportValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DartdocReport, $Out> {
  DartdocReportCopyWith<$R, DartdocReport, $Out> get $asDartdocReport =>
      $base.as((v, t, t2) => _DartdocReportCopyWithImpl(v, t, t2));
}

abstract class DartdocReportCopyWith<$R, $In extends DartdocReport, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? reportStatus});
  DartdocReportCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DartdocReportCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DartdocReport, $Out>
    implements DartdocReportCopyWith<$R, DartdocReport, $Out> {
  _DartdocReportCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DartdocReport> $mapper =
      DartdocReportMapper.ensureInitialized();
  @override
  $R call({Object? reportStatus = $none}) => $apply(FieldCopyWithData(
      {if (reportStatus != $none) #reportStatus: reportStatus}));
  @override
  DartdocReport $make(CopyWithData data) => DartdocReport(
      reportStatus: data.get(#reportStatus, or: $value.reportStatus));

  @override
  DartdocReportCopyWith<$R2, DartdocReport, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DartdocReportCopyWithImpl($value, $cast, t);
}

class PanaReportMapper extends ClassMapperBase<PanaReport> {
  PanaReportMapper._();

  static PanaReportMapper? _instance;
  static PanaReportMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PanaReportMapper._());
      PanaRuntimeInfoMapper.ensureInitialized();
      LicenseMapper.ensureInitialized();
      ReportMapper.ensureInitialized();
      ResultMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PanaReport';

  static DateTime? _$timestamp(PanaReport v) => v.timestamp;
  static const Field<PanaReport, DateTime> _f$timestamp =
      Field('timestamp', _$timestamp);
  static PanaRuntimeInfo? _$panaRuntimeInfo(PanaReport v) => v.panaRuntimeInfo;
  static const Field<PanaReport, PanaRuntimeInfo> _f$panaRuntimeInfo =
      Field('panaRuntimeInfo', _$panaRuntimeInfo);
  static String? _$reportStatus(PanaReport v) => v.reportStatus;
  static const Field<PanaReport, String> _f$reportStatus =
      Field('reportStatus', _$reportStatus);
  static List<String>? _$derivedTags(PanaReport v) => v.derivedTags;
  static const Field<PanaReport, List<String>> _f$derivedTags =
      Field('derivedTags', _$derivedTags);
  static List<String>? _$allDependencies(PanaReport v) => v.allDependencies;
  static const Field<PanaReport, List<String>> _f$allDependencies =
      Field('allDependencies', _$allDependencies);
  static List<License>? _$licenses(PanaReport v) => v.licenses;
  static const Field<PanaReport, List<License>> _f$licenses =
      Field('licenses', _$licenses);
  static Report? _$report(PanaReport v) => v.report;
  static const Field<PanaReport, Report> _f$report = Field('report', _$report);
  static Result? _$result(PanaReport v) => v.result;
  static const Field<PanaReport, Result> _f$result = Field('result', _$result);
  static List<dynamic>? _$screenshots(PanaReport v) => v.screenshots;
  static const Field<PanaReport, List<dynamic>> _f$screenshots =
      Field('screenshots', _$screenshots);
  static List<dynamic>? _$urlProblems(PanaReport v) => v.urlProblems;
  static const Field<PanaReport, List<dynamic>> _f$urlProblems =
      Field('urlProblems', _$urlProblems);

  @override
  final MappableFields<PanaReport> fields = const {
    #timestamp: _f$timestamp,
    #panaRuntimeInfo: _f$panaRuntimeInfo,
    #reportStatus: _f$reportStatus,
    #derivedTags: _f$derivedTags,
    #allDependencies: _f$allDependencies,
    #licenses: _f$licenses,
    #report: _f$report,
    #result: _f$result,
    #screenshots: _f$screenshots,
    #urlProblems: _f$urlProblems,
  };

  static PanaReport _instantiate(DecodingData data) {
    return PanaReport(
        timestamp: data.dec(_f$timestamp),
        panaRuntimeInfo: data.dec(_f$panaRuntimeInfo),
        reportStatus: data.dec(_f$reportStatus),
        derivedTags: data.dec(_f$derivedTags),
        allDependencies: data.dec(_f$allDependencies),
        licenses: data.dec(_f$licenses),
        report: data.dec(_f$report),
        result: data.dec(_f$result),
        screenshots: data.dec(_f$screenshots),
        urlProblems: data.dec(_f$urlProblems));
  }

  @override
  final Function instantiate = _instantiate;

  static PanaReport fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PanaReport>(map);
  }

  static PanaReport fromJson(String json) {
    return ensureInitialized().decodeJson<PanaReport>(json);
  }
}

mixin PanaReportMappable {
  String toJson() {
    return PanaReportMapper.ensureInitialized()
        .encodeJson<PanaReport>(this as PanaReport);
  }

  Map<String, dynamic> toMap() {
    return PanaReportMapper.ensureInitialized()
        .encodeMap<PanaReport>(this as PanaReport);
  }

  PanaReportCopyWith<PanaReport, PanaReport, PanaReport> get copyWith =>
      _PanaReportCopyWithImpl(this as PanaReport, $identity, $identity);
  @override
  String toString() {
    return PanaReportMapper.ensureInitialized()
        .stringifyValue(this as PanaReport);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PanaReportMapper.ensureInitialized()
                .isValueEqual(this as PanaReport, other));
  }

  @override
  int get hashCode {
    return PanaReportMapper.ensureInitialized().hashValue(this as PanaReport);
  }
}

extension PanaReportValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PanaReport, $Out> {
  PanaReportCopyWith<$R, PanaReport, $Out> get $asPanaReport =>
      $base.as((v, t, t2) => _PanaReportCopyWithImpl(v, t, t2));
}

abstract class PanaReportCopyWith<$R, $In extends PanaReport, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PanaRuntimeInfoCopyWith<$R, PanaRuntimeInfo, PanaRuntimeInfo>?
      get panaRuntimeInfo;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get derivedTags;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get allDependencies;
  ListCopyWith<$R, License, LicenseCopyWith<$R, License, License>>?
      get licenses;
  ReportCopyWith<$R, Report, Report>? get report;
  ResultCopyWith<$R, Result, Result>? get result;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get screenshots;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get urlProblems;
  $R call(
      {DateTime? timestamp,
      PanaRuntimeInfo? panaRuntimeInfo,
      String? reportStatus,
      List<String>? derivedTags,
      List<String>? allDependencies,
      List<License>? licenses,
      Report? report,
      Result? result,
      List<dynamic>? screenshots,
      List<dynamic>? urlProblems});
  PanaReportCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PanaReportCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PanaReport, $Out>
    implements PanaReportCopyWith<$R, PanaReport, $Out> {
  _PanaReportCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PanaReport> $mapper =
      PanaReportMapper.ensureInitialized();
  @override
  PanaRuntimeInfoCopyWith<$R, PanaRuntimeInfo, PanaRuntimeInfo>?
      get panaRuntimeInfo => $value.panaRuntimeInfo?.copyWith
          .$chain((v) => call(panaRuntimeInfo: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get derivedTags => $value.derivedTags != null
          ? ListCopyWith(
              $value.derivedTags!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(derivedTags: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get allDependencies => $value.allDependencies != null
          ? ListCopyWith(
              $value.allDependencies!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(allDependencies: v))
          : null;
  @override
  ListCopyWith<$R, License, LicenseCopyWith<$R, License, License>>?
      get licenses => $value.licenses != null
          ? ListCopyWith($value.licenses!, (v, t) => v.copyWith.$chain(t),
              (v) => call(licenses: v))
          : null;
  @override
  ReportCopyWith<$R, Report, Report>? get report =>
      $value.report?.copyWith.$chain((v) => call(report: v));
  @override
  ResultCopyWith<$R, Result, Result>? get result =>
      $value.result?.copyWith.$chain((v) => call(result: v));
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get screenshots => $value.screenshots != null
          ? ListCopyWith(
              $value.screenshots!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(screenshots: v))
          : null;
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get urlProblems => $value.urlProblems != null
          ? ListCopyWith(
              $value.urlProblems!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(urlProblems: v))
          : null;
  @override
  $R call(
          {Object? timestamp = $none,
          Object? panaRuntimeInfo = $none,
          Object? reportStatus = $none,
          Object? derivedTags = $none,
          Object? allDependencies = $none,
          Object? licenses = $none,
          Object? report = $none,
          Object? result = $none,
          Object? screenshots = $none,
          Object? urlProblems = $none}) =>
      $apply(FieldCopyWithData({
        if (timestamp != $none) #timestamp: timestamp,
        if (panaRuntimeInfo != $none) #panaRuntimeInfo: panaRuntimeInfo,
        if (reportStatus != $none) #reportStatus: reportStatus,
        if (derivedTags != $none) #derivedTags: derivedTags,
        if (allDependencies != $none) #allDependencies: allDependencies,
        if (licenses != $none) #licenses: licenses,
        if (report != $none) #report: report,
        if (result != $none) #result: result,
        if (screenshots != $none) #screenshots: screenshots,
        if (urlProblems != $none) #urlProblems: urlProblems
      }));
  @override
  PanaReport $make(CopyWithData data) => PanaReport(
      timestamp: data.get(#timestamp, or: $value.timestamp),
      panaRuntimeInfo: data.get(#panaRuntimeInfo, or: $value.panaRuntimeInfo),
      reportStatus: data.get(#reportStatus, or: $value.reportStatus),
      derivedTags: data.get(#derivedTags, or: $value.derivedTags),
      allDependencies: data.get(#allDependencies, or: $value.allDependencies),
      licenses: data.get(#licenses, or: $value.licenses),
      report: data.get(#report, or: $value.report),
      result: data.get(#result, or: $value.result),
      screenshots: data.get(#screenshots, or: $value.screenshots),
      urlProblems: data.get(#urlProblems, or: $value.urlProblems));

  @override
  PanaReportCopyWith<$R2, PanaReport, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PanaReportCopyWithImpl($value, $cast, t);
}

class PanaRuntimeInfoMapper extends ClassMapperBase<PanaRuntimeInfo> {
  PanaRuntimeInfoMapper._();

  static PanaRuntimeInfoMapper? _instance;
  static PanaRuntimeInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PanaRuntimeInfoMapper._());
      FlutterVersionsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PanaRuntimeInfo';

  static String? _$panaVersion(PanaRuntimeInfo v) => v.panaVersion;
  static const Field<PanaRuntimeInfo, String> _f$panaVersion =
      Field('panaVersion', _$panaVersion);
  static String? _$sdkVersion(PanaRuntimeInfo v) => v.sdkVersion;
  static const Field<PanaRuntimeInfo, String> _f$sdkVersion =
      Field('sdkVersion', _$sdkVersion);
  static FlutterVersions? _$flutterVersions(PanaRuntimeInfo v) =>
      v.flutterVersions;
  static const Field<PanaRuntimeInfo, FlutterVersions> _f$flutterVersions =
      Field('flutterVersions', _$flutterVersions);

  @override
  final MappableFields<PanaRuntimeInfo> fields = const {
    #panaVersion: _f$panaVersion,
    #sdkVersion: _f$sdkVersion,
    #flutterVersions: _f$flutterVersions,
  };

  static PanaRuntimeInfo _instantiate(DecodingData data) {
    return PanaRuntimeInfo(
        panaVersion: data.dec(_f$panaVersion),
        sdkVersion: data.dec(_f$sdkVersion),
        flutterVersions: data.dec(_f$flutterVersions));
  }

  @override
  final Function instantiate = _instantiate;

  static PanaRuntimeInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PanaRuntimeInfo>(map);
  }

  static PanaRuntimeInfo fromJson(String json) {
    return ensureInitialized().decodeJson<PanaRuntimeInfo>(json);
  }
}

mixin PanaRuntimeInfoMappable {
  String toJson() {
    return PanaRuntimeInfoMapper.ensureInitialized()
        .encodeJson<PanaRuntimeInfo>(this as PanaRuntimeInfo);
  }

  Map<String, dynamic> toMap() {
    return PanaRuntimeInfoMapper.ensureInitialized()
        .encodeMap<PanaRuntimeInfo>(this as PanaRuntimeInfo);
  }

  PanaRuntimeInfoCopyWith<PanaRuntimeInfo, PanaRuntimeInfo, PanaRuntimeInfo>
      get copyWith => _PanaRuntimeInfoCopyWithImpl(
          this as PanaRuntimeInfo, $identity, $identity);
  @override
  String toString() {
    return PanaRuntimeInfoMapper.ensureInitialized()
        .stringifyValue(this as PanaRuntimeInfo);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PanaRuntimeInfoMapper.ensureInitialized()
                .isValueEqual(this as PanaRuntimeInfo, other));
  }

  @override
  int get hashCode {
    return PanaRuntimeInfoMapper.ensureInitialized()
        .hashValue(this as PanaRuntimeInfo);
  }
}

extension PanaRuntimeInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PanaRuntimeInfo, $Out> {
  PanaRuntimeInfoCopyWith<$R, PanaRuntimeInfo, $Out> get $asPanaRuntimeInfo =>
      $base.as((v, t, t2) => _PanaRuntimeInfoCopyWithImpl(v, t, t2));
}

abstract class PanaRuntimeInfoCopyWith<$R, $In extends PanaRuntimeInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FlutterVersionsCopyWith<$R, FlutterVersions, FlutterVersions>?
      get flutterVersions;
  $R call(
      {String? panaVersion,
      String? sdkVersion,
      FlutterVersions? flutterVersions});
  PanaRuntimeInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PanaRuntimeInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PanaRuntimeInfo, $Out>
    implements PanaRuntimeInfoCopyWith<$R, PanaRuntimeInfo, $Out> {
  _PanaRuntimeInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PanaRuntimeInfo> $mapper =
      PanaRuntimeInfoMapper.ensureInitialized();
  @override
  FlutterVersionsCopyWith<$R, FlutterVersions, FlutterVersions>?
      get flutterVersions => $value.flutterVersions?.copyWith
          .$chain((v) => call(flutterVersions: v));
  @override
  $R call(
          {Object? panaVersion = $none,
          Object? sdkVersion = $none,
          Object? flutterVersions = $none}) =>
      $apply(FieldCopyWithData({
        if (panaVersion != $none) #panaVersion: panaVersion,
        if (sdkVersion != $none) #sdkVersion: sdkVersion,
        if (flutterVersions != $none) #flutterVersions: flutterVersions
      }));
  @override
  PanaRuntimeInfo $make(CopyWithData data) => PanaRuntimeInfo(
      panaVersion: data.get(#panaVersion, or: $value.panaVersion),
      sdkVersion: data.get(#sdkVersion, or: $value.sdkVersion),
      flutterVersions: data.get(#flutterVersions, or: $value.flutterVersions));

  @override
  PanaRuntimeInfoCopyWith<$R2, PanaRuntimeInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PanaRuntimeInfoCopyWithImpl($value, $cast, t);
}

class FlutterVersionsMapper extends ClassMapperBase<FlutterVersions> {
  FlutterVersionsMapper._();

  static FlutterVersionsMapper? _instance;
  static FlutterVersionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FlutterVersionsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FlutterVersions';

  static String? _$frameworkVersion(FlutterVersions v) => v.frameworkVersion;
  static const Field<FlutterVersions, String> _f$frameworkVersion =
      Field('frameworkVersion', _$frameworkVersion);
  static String? _$channel(FlutterVersions v) => v.channel;
  static const Field<FlutterVersions, String> _f$channel =
      Field('channel', _$channel);
  static String? _$repositoryUrl(FlutterVersions v) => v.repositoryUrl;
  static const Field<FlutterVersions, String> _f$repositoryUrl =
      Field('repositoryUrl', _$repositoryUrl);
  static String? _$frameworkRevision(FlutterVersions v) => v.frameworkRevision;
  static const Field<FlutterVersions, String> _f$frameworkRevision =
      Field('frameworkRevision', _$frameworkRevision);
  static String? _$frameworkCommitDate(FlutterVersions v) =>
      v.frameworkCommitDate;
  static const Field<FlutterVersions, String> _f$frameworkCommitDate =
      Field('frameworkCommitDate', _$frameworkCommitDate);
  static String? _$engineRevision(FlutterVersions v) => v.engineRevision;
  static const Field<FlutterVersions, String> _f$engineRevision =
      Field('engineRevision', _$engineRevision);
  static String? _$dartSdkVersion(FlutterVersions v) => v.dartSdkVersion;
  static const Field<FlutterVersions, String> _f$dartSdkVersion =
      Field('dartSdkVersion', _$dartSdkVersion);
  static String? _$devToolsVersion(FlutterVersions v) => v.devToolsVersion;
  static const Field<FlutterVersions, String> _f$devToolsVersion =
      Field('devToolsVersion', _$devToolsVersion);
  static String? _$flutterVersion(FlutterVersions v) => v.flutterVersion;
  static const Field<FlutterVersions, String> _f$flutterVersion =
      Field('flutterVersion', _$flutterVersion);
  static String? _$flutterRoot(FlutterVersions v) => v.flutterRoot;
  static const Field<FlutterVersions, String> _f$flutterRoot =
      Field('flutterRoot', _$flutterRoot);

  @override
  final MappableFields<FlutterVersions> fields = const {
    #frameworkVersion: _f$frameworkVersion,
    #channel: _f$channel,
    #repositoryUrl: _f$repositoryUrl,
    #frameworkRevision: _f$frameworkRevision,
    #frameworkCommitDate: _f$frameworkCommitDate,
    #engineRevision: _f$engineRevision,
    #dartSdkVersion: _f$dartSdkVersion,
    #devToolsVersion: _f$devToolsVersion,
    #flutterVersion: _f$flutterVersion,
    #flutterRoot: _f$flutterRoot,
  };

  static FlutterVersions _instantiate(DecodingData data) {
    return FlutterVersions(
        frameworkVersion: data.dec(_f$frameworkVersion),
        channel: data.dec(_f$channel),
        repositoryUrl: data.dec(_f$repositoryUrl),
        frameworkRevision: data.dec(_f$frameworkRevision),
        frameworkCommitDate: data.dec(_f$frameworkCommitDate),
        engineRevision: data.dec(_f$engineRevision),
        dartSdkVersion: data.dec(_f$dartSdkVersion),
        devToolsVersion: data.dec(_f$devToolsVersion),
        flutterVersion: data.dec(_f$flutterVersion),
        flutterRoot: data.dec(_f$flutterRoot));
  }

  @override
  final Function instantiate = _instantiate;

  static FlutterVersions fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FlutterVersions>(map);
  }

  static FlutterVersions fromJson(String json) {
    return ensureInitialized().decodeJson<FlutterVersions>(json);
  }
}

mixin FlutterVersionsMappable {
  String toJson() {
    return FlutterVersionsMapper.ensureInitialized()
        .encodeJson<FlutterVersions>(this as FlutterVersions);
  }

  Map<String, dynamic> toMap() {
    return FlutterVersionsMapper.ensureInitialized()
        .encodeMap<FlutterVersions>(this as FlutterVersions);
  }

  FlutterVersionsCopyWith<FlutterVersions, FlutterVersions, FlutterVersions>
      get copyWith => _FlutterVersionsCopyWithImpl(
          this as FlutterVersions, $identity, $identity);
  @override
  String toString() {
    return FlutterVersionsMapper.ensureInitialized()
        .stringifyValue(this as FlutterVersions);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            FlutterVersionsMapper.ensureInitialized()
                .isValueEqual(this as FlutterVersions, other));
  }

  @override
  int get hashCode {
    return FlutterVersionsMapper.ensureInitialized()
        .hashValue(this as FlutterVersions);
  }
}

extension FlutterVersionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FlutterVersions, $Out> {
  FlutterVersionsCopyWith<$R, FlutterVersions, $Out> get $asFlutterVersions =>
      $base.as((v, t, t2) => _FlutterVersionsCopyWithImpl(v, t, t2));
}

abstract class FlutterVersionsCopyWith<$R, $In extends FlutterVersions, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? frameworkVersion,
      String? channel,
      String? repositoryUrl,
      String? frameworkRevision,
      String? frameworkCommitDate,
      String? engineRevision,
      String? dartSdkVersion,
      String? devToolsVersion,
      String? flutterVersion,
      String? flutterRoot});
  FlutterVersionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FlutterVersionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FlutterVersions, $Out>
    implements FlutterVersionsCopyWith<$R, FlutterVersions, $Out> {
  _FlutterVersionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FlutterVersions> $mapper =
      FlutterVersionsMapper.ensureInitialized();
  @override
  $R call(
          {Object? frameworkVersion = $none,
          Object? channel = $none,
          Object? repositoryUrl = $none,
          Object? frameworkRevision = $none,
          Object? frameworkCommitDate = $none,
          Object? engineRevision = $none,
          Object? dartSdkVersion = $none,
          Object? devToolsVersion = $none,
          Object? flutterVersion = $none,
          Object? flutterRoot = $none}) =>
      $apply(FieldCopyWithData({
        if (frameworkVersion != $none) #frameworkVersion: frameworkVersion,
        if (channel != $none) #channel: channel,
        if (repositoryUrl != $none) #repositoryUrl: repositoryUrl,
        if (frameworkRevision != $none) #frameworkRevision: frameworkRevision,
        if (frameworkCommitDate != $none)
          #frameworkCommitDate: frameworkCommitDate,
        if (engineRevision != $none) #engineRevision: engineRevision,
        if (dartSdkVersion != $none) #dartSdkVersion: dartSdkVersion,
        if (devToolsVersion != $none) #devToolsVersion: devToolsVersion,
        if (flutterVersion != $none) #flutterVersion: flutterVersion,
        if (flutterRoot != $none) #flutterRoot: flutterRoot
      }));
  @override
  FlutterVersions $make(CopyWithData data) => FlutterVersions(
      frameworkVersion:
          data.get(#frameworkVersion, or: $value.frameworkVersion),
      channel: data.get(#channel, or: $value.channel),
      repositoryUrl: data.get(#repositoryUrl, or: $value.repositoryUrl),
      frameworkRevision:
          data.get(#frameworkRevision, or: $value.frameworkRevision),
      frameworkCommitDate:
          data.get(#frameworkCommitDate, or: $value.frameworkCommitDate),
      engineRevision: data.get(#engineRevision, or: $value.engineRevision),
      dartSdkVersion: data.get(#dartSdkVersion, or: $value.dartSdkVersion),
      devToolsVersion: data.get(#devToolsVersion, or: $value.devToolsVersion),
      flutterVersion: data.get(#flutterVersion, or: $value.flutterVersion),
      flutterRoot: data.get(#flutterRoot, or: $value.flutterRoot));

  @override
  FlutterVersionsCopyWith<$R2, FlutterVersions, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FlutterVersionsCopyWithImpl($value, $cast, t);
}

class LicenseMapper extends ClassMapperBase<License> {
  LicenseMapper._();

  static LicenseMapper? _instance;
  static LicenseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LicenseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'License';

  static String? _$path(License v) => v.path;
  static const Field<License, String> _f$path = Field('path', _$path);
  static String? _$spdxIdentifier(License v) => v.spdxIdentifier;
  static const Field<License, String> _f$spdxIdentifier =
      Field('spdxIdentifier', _$spdxIdentifier);

  @override
  final MappableFields<License> fields = const {
    #path: _f$path,
    #spdxIdentifier: _f$spdxIdentifier,
  };

  static License _instantiate(DecodingData data) {
    return License(
        path: data.dec(_f$path), spdxIdentifier: data.dec(_f$spdxIdentifier));
  }

  @override
  final Function instantiate = _instantiate;

  static License fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<License>(map);
  }

  static License fromJson(String json) {
    return ensureInitialized().decodeJson<License>(json);
  }
}

mixin LicenseMappable {
  String toJson() {
    return LicenseMapper.ensureInitialized()
        .encodeJson<License>(this as License);
  }

  Map<String, dynamic> toMap() {
    return LicenseMapper.ensureInitialized()
        .encodeMap<License>(this as License);
  }

  LicenseCopyWith<License, License, License> get copyWith =>
      _LicenseCopyWithImpl(this as License, $identity, $identity);
  @override
  String toString() {
    return LicenseMapper.ensureInitialized().stringifyValue(this as License);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LicenseMapper.ensureInitialized()
                .isValueEqual(this as License, other));
  }

  @override
  int get hashCode {
    return LicenseMapper.ensureInitialized().hashValue(this as License);
  }
}

extension LicenseValueCopy<$R, $Out> on ObjectCopyWith<$R, License, $Out> {
  LicenseCopyWith<$R, License, $Out> get $asLicense =>
      $base.as((v, t, t2) => _LicenseCopyWithImpl(v, t, t2));
}

abstract class LicenseCopyWith<$R, $In extends License, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? path, String? spdxIdentifier});
  LicenseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LicenseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, License, $Out>
    implements LicenseCopyWith<$R, License, $Out> {
  _LicenseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<License> $mapper =
      LicenseMapper.ensureInitialized();
  @override
  $R call({Object? path = $none, Object? spdxIdentifier = $none}) =>
      $apply(FieldCopyWithData({
        if (path != $none) #path: path,
        if (spdxIdentifier != $none) #spdxIdentifier: spdxIdentifier
      }));
  @override
  License $make(CopyWithData data) => License(
      path: data.get(#path, or: $value.path),
      spdxIdentifier: data.get(#spdxIdentifier, or: $value.spdxIdentifier));

  @override
  LicenseCopyWith<$R2, License, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LicenseCopyWithImpl($value, $cast, t);
}

class ReportMapper extends ClassMapperBase<Report> {
  ReportMapper._();

  static ReportMapper? _instance;
  static ReportMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReportMapper._());
      SectionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Report';

  static List<Section>? _$sections(Report v) => v.sections;
  static const Field<Report, List<Section>> _f$sections =
      Field('sections', _$sections);

  @override
  final MappableFields<Report> fields = const {
    #sections: _f$sections,
  };

  static Report _instantiate(DecodingData data) {
    return Report(sections: data.dec(_f$sections));
  }

  @override
  final Function instantiate = _instantiate;

  static Report fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Report>(map);
  }

  static Report fromJson(String json) {
    return ensureInitialized().decodeJson<Report>(json);
  }
}

mixin ReportMappable {
  String toJson() {
    return ReportMapper.ensureInitialized().encodeJson<Report>(this as Report);
  }

  Map<String, dynamic> toMap() {
    return ReportMapper.ensureInitialized().encodeMap<Report>(this as Report);
  }

  ReportCopyWith<Report, Report, Report> get copyWith =>
      _ReportCopyWithImpl(this as Report, $identity, $identity);
  @override
  String toString() {
    return ReportMapper.ensureInitialized().stringifyValue(this as Report);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ReportMapper.ensureInitialized()
                .isValueEqual(this as Report, other));
  }

  @override
  int get hashCode {
    return ReportMapper.ensureInitialized().hashValue(this as Report);
  }
}

extension ReportValueCopy<$R, $Out> on ObjectCopyWith<$R, Report, $Out> {
  ReportCopyWith<$R, Report, $Out> get $asReport =>
      $base.as((v, t, t2) => _ReportCopyWithImpl(v, t, t2));
}

abstract class ReportCopyWith<$R, $In extends Report, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Section, SectionCopyWith<$R, Section, Section>>?
      get sections;
  $R call({List<Section>? sections});
  ReportCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReportCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Report, $Out>
    implements ReportCopyWith<$R, Report, $Out> {
  _ReportCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Report> $mapper = ReportMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Section, SectionCopyWith<$R, Section, Section>>?
      get sections => $value.sections != null
          ? ListCopyWith($value.sections!, (v, t) => v.copyWith.$chain(t),
              (v) => call(sections: v))
          : null;
  @override
  $R call({Object? sections = $none}) =>
      $apply(FieldCopyWithData({if (sections != $none) #sections: sections}));
  @override
  Report $make(CopyWithData data) =>
      Report(sections: data.get(#sections, or: $value.sections));

  @override
  ReportCopyWith<$R2, Report, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ReportCopyWithImpl($value, $cast, t);
}

class SectionMapper extends ClassMapperBase<Section> {
  SectionMapper._();

  static SectionMapper? _instance;
  static SectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SectionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Section';

  static String? _$id(Section v) => v.id;
  static const Field<Section, String> _f$id = Field('id', _$id);
  static String? _$title(Section v) => v.title;
  static const Field<Section, String> _f$title = Field('title', _$title);
  static int? _$grantedPoints(Section v) => v.grantedPoints;
  static const Field<Section, int> _f$grantedPoints =
      Field('grantedPoints', _$grantedPoints);
  static int? _$maxPoints(Section v) => v.maxPoints;
  static const Field<Section, int> _f$maxPoints =
      Field('maxPoints', _$maxPoints);
  static String? _$status(Section v) => v.status;
  static const Field<Section, String> _f$status = Field('status', _$status);
  static String? _$summary(Section v) => v.summary;
  static const Field<Section, String> _f$summary = Field('summary', _$summary);

  @override
  final MappableFields<Section> fields = const {
    #id: _f$id,
    #title: _f$title,
    #grantedPoints: _f$grantedPoints,
    #maxPoints: _f$maxPoints,
    #status: _f$status,
    #summary: _f$summary,
  };

  static Section _instantiate(DecodingData data) {
    return Section(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        grantedPoints: data.dec(_f$grantedPoints),
        maxPoints: data.dec(_f$maxPoints),
        status: data.dec(_f$status),
        summary: data.dec(_f$summary));
  }

  @override
  final Function instantiate = _instantiate;

  static Section fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Section>(map);
  }

  static Section fromJson(String json) {
    return ensureInitialized().decodeJson<Section>(json);
  }
}

mixin SectionMappable {
  String toJson() {
    return SectionMapper.ensureInitialized()
        .encodeJson<Section>(this as Section);
  }

  Map<String, dynamic> toMap() {
    return SectionMapper.ensureInitialized()
        .encodeMap<Section>(this as Section);
  }

  SectionCopyWith<Section, Section, Section> get copyWith =>
      _SectionCopyWithImpl(this as Section, $identity, $identity);
  @override
  String toString() {
    return SectionMapper.ensureInitialized().stringifyValue(this as Section);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            SectionMapper.ensureInitialized()
                .isValueEqual(this as Section, other));
  }

  @override
  int get hashCode {
    return SectionMapper.ensureInitialized().hashValue(this as Section);
  }
}

extension SectionValueCopy<$R, $Out> on ObjectCopyWith<$R, Section, $Out> {
  SectionCopyWith<$R, Section, $Out> get $asSection =>
      $base.as((v, t, t2) => _SectionCopyWithImpl(v, t, t2));
}

abstract class SectionCopyWith<$R, $In extends Section, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? title,
      int? grantedPoints,
      int? maxPoints,
      String? status,
      String? summary});
  SectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Section, $Out>
    implements SectionCopyWith<$R, Section, $Out> {
  _SectionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Section> $mapper =
      SectionMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? title = $none,
          Object? grantedPoints = $none,
          Object? maxPoints = $none,
          Object? status = $none,
          Object? summary = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != $none) #title: title,
        if (grantedPoints != $none) #grantedPoints: grantedPoints,
        if (maxPoints != $none) #maxPoints: maxPoints,
        if (status != $none) #status: status,
        if (summary != $none) #summary: summary
      }));
  @override
  Section $make(CopyWithData data) => Section(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      grantedPoints: data.get(#grantedPoints, or: $value.grantedPoints),
      maxPoints: data.get(#maxPoints, or: $value.maxPoints),
      status: data.get(#status, or: $value.status),
      summary: data.get(#summary, or: $value.summary));

  @override
  SectionCopyWith<$R2, Section, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SectionCopyWithImpl($value, $cast, t);
}

class ResultMapper extends ClassMapperBase<Result> {
  ResultMapper._();

  static ResultMapper? _instance;
  static ResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResultMapper._());
      RepositoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Result';

  static String? _$repositoryUrl(Result v) => v.repositoryUrl;
  static const Field<Result, String> _f$repositoryUrl =
      Field('repositoryUrl', _$repositoryUrl);
  static String? _$issueTrackerUrl(Result v) => v.issueTrackerUrl;
  static const Field<Result, String> _f$issueTrackerUrl =
      Field('issueTrackerUrl', _$issueTrackerUrl);
  static Repository? _$repository(Result v) => v.repository;
  static const Field<Result, Repository> _f$repository =
      Field('repository', _$repository);
  static int? _$grantedPoints(Result v) => v.grantedPoints;
  static const Field<Result, int> _f$grantedPoints =
      Field('grantedPoints', _$grantedPoints);
  static int? _$maxPoints(Result v) => v.maxPoints;
  static const Field<Result, int> _f$maxPoints =
      Field('maxPoints', _$maxPoints);

  @override
  final MappableFields<Result> fields = const {
    #repositoryUrl: _f$repositoryUrl,
    #issueTrackerUrl: _f$issueTrackerUrl,
    #repository: _f$repository,
    #grantedPoints: _f$grantedPoints,
    #maxPoints: _f$maxPoints,
  };

  static Result _instantiate(DecodingData data) {
    return Result(
        repositoryUrl: data.dec(_f$repositoryUrl),
        issueTrackerUrl: data.dec(_f$issueTrackerUrl),
        repository: data.dec(_f$repository),
        grantedPoints: data.dec(_f$grantedPoints),
        maxPoints: data.dec(_f$maxPoints));
  }

  @override
  final Function instantiate = _instantiate;

  static Result fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Result>(map);
  }

  static Result fromJson(String json) {
    return ensureInitialized().decodeJson<Result>(json);
  }
}

mixin ResultMappable {
  String toJson() {
    return ResultMapper.ensureInitialized().encodeJson<Result>(this as Result);
  }

  Map<String, dynamic> toMap() {
    return ResultMapper.ensureInitialized().encodeMap<Result>(this as Result);
  }

  ResultCopyWith<Result, Result, Result> get copyWith =>
      _ResultCopyWithImpl(this as Result, $identity, $identity);
  @override
  String toString() {
    return ResultMapper.ensureInitialized().stringifyValue(this as Result);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ResultMapper.ensureInitialized()
                .isValueEqual(this as Result, other));
  }

  @override
  int get hashCode {
    return ResultMapper.ensureInitialized().hashValue(this as Result);
  }
}

extension ResultValueCopy<$R, $Out> on ObjectCopyWith<$R, Result, $Out> {
  ResultCopyWith<$R, Result, $Out> get $asResult =>
      $base.as((v, t, t2) => _ResultCopyWithImpl(v, t, t2));
}

abstract class ResultCopyWith<$R, $In extends Result, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RepositoryCopyWith<$R, Repository, Repository>? get repository;
  $R call(
      {String? repositoryUrl,
      String? issueTrackerUrl,
      Repository? repository,
      int? grantedPoints,
      int? maxPoints});
  ResultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResultCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Result, $Out>
    implements ResultCopyWith<$R, Result, $Out> {
  _ResultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Result> $mapper = ResultMapper.ensureInitialized();
  @override
  RepositoryCopyWith<$R, Repository, Repository>? get repository =>
      $value.repository.copyWith.$chain((v) => call(repository: v));
  @override
  $R call(
          {Object? repositoryUrl = $none,
          Object? issueTrackerUrl = $none,
          Object? repository = $none,
          Object? grantedPoints = $none,
          Object? maxPoints = $none}) =>
      $apply(FieldCopyWithData({
        if (repositoryUrl != $none) #repositoryUrl: repositoryUrl,
        if (issueTrackerUrl != $none) #issueTrackerUrl: issueTrackerUrl,
        if (repository != $none) #repository: repository,
        if (grantedPoints != $none) #grantedPoints: grantedPoints,
        if (maxPoints != $none) #maxPoints: maxPoints
      }));
  @override
  Result $make(CopyWithData data) => Result(
      repositoryUrl: data.get(#repositoryUrl, or: $value.repositoryUrl),
      issueTrackerUrl: data.get(#issueTrackerUrl, or: $value.issueTrackerUrl),
      repository: data.get(#repository, or: $value.repository),
      grantedPoints: data.get(#grantedPoints, or: $value.grantedPoints),
      maxPoints: data.get(#maxPoints, or: $value.maxPoints));

  @override
  ResultCopyWith<$R2, Result, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ResultCopyWithImpl($value, $cast, t);
}

class RepositoryMapper extends ClassMapperBase<Repository> {
  RepositoryMapper._();

  static RepositoryMapper? _instance;
  static RepositoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RepositoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Repository';

  static String? _$provider(Repository v) => v.provider;
  static const Field<Repository, String> _f$provider =
      Field('provider', _$provider);
  static String? _$host(Repository v) => v.host;
  static const Field<Repository, String> _f$host = Field('host', _$host);
  static String? _$repository(Repository v) => v.repository;
  static const Field<Repository, String> _f$repository =
      Field('repository', _$repository);
  static String? _$branch(Repository v) => v.branch;
  static const Field<Repository, String> _f$branch = Field('branch', _$branch);

  @override
  final MappableFields<Repository> fields = const {
    #provider: _f$provider,
    #host: _f$host,
    #repository: _f$repository,
    #branch: _f$branch,
  };

  static Repository _instantiate(DecodingData data) {
    return Repository(
        provider: data.dec(_f$provider),
        host: data.dec(_f$host),
        repository: data.dec(_f$repository),
        branch: data.dec(_f$branch));
  }

  @override
  final Function instantiate = _instantiate;

  static Repository fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Repository>(map);
  }

  static Repository fromJson(String json) {
    return ensureInitialized().decodeJson<Repository>(json);
  }
}

mixin RepositoryMappable {
  String toJson() {
    return RepositoryMapper.ensureInitialized()
        .encodeJson<Repository>(this as Repository);
  }

  Map<String, dynamic> toMap() {
    return RepositoryMapper.ensureInitialized()
        .encodeMap<Repository>(this as Repository);
  }

  RepositoryCopyWith<Repository, Repository, Repository> get copyWith =>
      _RepositoryCopyWithImpl(this as Repository, $identity, $identity);
  @override
  String toString() {
    return RepositoryMapper.ensureInitialized()
        .stringifyValue(this as Repository);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            RepositoryMapper.ensureInitialized()
                .isValueEqual(this as Repository, other));
  }

  @override
  int get hashCode {
    return RepositoryMapper.ensureInitialized().hashValue(this as Repository);
  }
}

extension RepositoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Repository, $Out> {
  RepositoryCopyWith<$R, Repository, $Out> get $asRepository =>
      $base.as((v, t, t2) => _RepositoryCopyWithImpl(v, t, t2));
}

abstract class RepositoryCopyWith<$R, $In extends Repository, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? provider, String? host, String? repository, String? branch});
  RepositoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RepositoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Repository, $Out>
    implements RepositoryCopyWith<$R, Repository, $Out> {
  _RepositoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Repository> $mapper =
      RepositoryMapper.ensureInitialized();
  @override
  $R call(
          {Object? provider = $none,
          Object? host = $none,
          Object? repository = $none,
          Object? branch = $none}) =>
      $apply(FieldCopyWithData({
        if (provider != $none) #provider: provider,
        if (host != $none) #host: host,
        if (repository != $none) #repository: repository,
        if (branch != $none) #branch: branch
      }));
  @override
  Repository $make(CopyWithData data) => Repository(
      provider: data.get(#provider, or: $value.provider),
      host: data.get(#host, or: $value.host),
      repository: data.get(#repository, or: $value.repository),
      branch: data.get(#branch, or: $value.branch));

  @override
  RepositoryCopyWith<$R2, Repository, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RepositoryCopyWithImpl($value, $cast, t);
}
