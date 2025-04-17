//
//  Generated code. Do not modify.
//  source: lib/protos/m1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DataMessage extends $pb.GeneratedMessage {
  factory DataMessage({
    $core.int? version,
    $core.String? clientId,
    $core.String? deviceUuid,
    $core.String? totp,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (clientId != null) {
      $result.clientId = clientId;
    }
    if (deviceUuid != null) {
      $result.deviceUuid = deviceUuid;
    }
    if (totp != null) {
      $result.totp = totp;
    }
    return $result;
  }
  DataMessage._() : super();
  factory DataMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataMessage', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'clientId', protoName: 'clientId')
    ..aOS(3, _omitFieldNames ? '' : 'deviceUuid', protoName: 'deviceUuid')
    ..aOS(4, _omitFieldNames ? '' : 'totp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataMessage clone() => DataMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataMessage copyWith(void Function(DataMessage) updates) => super.copyWith((message) => updates(message as DataMessage)) as DataMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataMessage create() => DataMessage._();
  DataMessage createEmptyInstance() => create();
  static $pb.PbList<DataMessage> createRepeated() => $pb.PbList<DataMessage>();
  @$core.pragma('dart2js:noInline')
  static DataMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataMessage>(create);
  static DataMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientId => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceUuid => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceUuid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceUuid() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceUuid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get totp => $_getSZ(3);
  @$pb.TagNumber(4)
  set totp($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotp() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
