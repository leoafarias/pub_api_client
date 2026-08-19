// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'publisher_info_model.dart';

class PublisherInfoMapper extends ClassMapperBase<PublisherInfo> {
  PublisherInfoMapper._();

  static PublisherInfoMapper? _instance;
  static PublisherInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PublisherInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PublisherInfo';

  static String? _$description(PublisherInfo v) => v.description;
  static const Field<PublisherInfo, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );
  static String? _$websiteUrl(PublisherInfo v) => v.websiteUrl;
  static const Field<PublisherInfo, String> _f$websiteUrl = Field(
    'websiteUrl',
    _$websiteUrl,
    opt: true,
  );
  static String? _$contactEmail(PublisherInfo v) => v.contactEmail;
  static const Field<PublisherInfo, String> _f$contactEmail = Field(
    'contactEmail',
    _$contactEmail,
    opt: true,
  );

  @override
  final MappableFields<PublisherInfo> fields = const {
    #description: _f$description,
    #websiteUrl: _f$websiteUrl,
    #contactEmail: _f$contactEmail,
  };

  static PublisherInfo _instantiate(DecodingData data) {
    return PublisherInfo(
      description: data.dec(_f$description),
      websiteUrl: data.dec(_f$websiteUrl),
      contactEmail: data.dec(_f$contactEmail),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PublisherInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PublisherInfo>(map);
  }

  static PublisherInfo fromJson(String json) {
    return ensureInitialized().decodeJson<PublisherInfo>(json);
  }
}

mixin PublisherInfoMappable {
  String toJson() {
    return PublisherInfoMapper.ensureInitialized().encodeJson<PublisherInfo>(
      this as PublisherInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return PublisherInfoMapper.ensureInitialized().encodeMap<PublisherInfo>(
      this as PublisherInfo,
    );
  }

  PublisherInfoCopyWith<PublisherInfo, PublisherInfo, PublisherInfo>
  get copyWith => _PublisherInfoCopyWithImpl<PublisherInfo, PublisherInfo>(
    this as PublisherInfo,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PublisherInfoMapper.ensureInitialized().stringifyValue(
      this as PublisherInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return PublisherInfoMapper.ensureInitialized().equalsValue(
      this as PublisherInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return PublisherInfoMapper.ensureInitialized().hashValue(
      this as PublisherInfo,
    );
  }
}

extension PublisherInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PublisherInfo, $Out> {
  PublisherInfoCopyWith<$R, PublisherInfo, $Out> get $asPublisherInfo =>
      $base.as((v, t, t2) => _PublisherInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PublisherInfoCopyWith<$R, $In extends PublisherInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? description, String? websiteUrl, String? contactEmail});
  PublisherInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PublisherInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PublisherInfo, $Out>
    implements PublisherInfoCopyWith<$R, PublisherInfo, $Out> {
  _PublisherInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PublisherInfo> $mapper =
      PublisherInfoMapper.ensureInitialized();
  @override
  $R call({
    Object? description = $none,
    Object? websiteUrl = $none,
    Object? contactEmail = $none,
  }) => $apply(
    FieldCopyWithData({
      if (description != $none) #description: description,
      if (websiteUrl != $none) #websiteUrl: websiteUrl,
      if (contactEmail != $none) #contactEmail: contactEmail,
    }),
  );
  @override
  PublisherInfo $make(CopyWithData data) => PublisherInfo(
    description: data.get(#description, or: $value.description),
    websiteUrl: data.get(#websiteUrl, or: $value.websiteUrl),
    contactEmail: data.get(#contactEmail, or: $value.contactEmail),
  );

  @override
  PublisherInfoCopyWith<$R2, PublisherInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PublisherInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

