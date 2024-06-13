// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToLogInImpl _$$ClientWantsToLogInImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogInImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToLogInImplToJson(
        _$ClientWantsToLogInImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'eventType': instance.$type,
    };

_$ClientWantsHistoryImpl _$$ClientWantsHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsHistoryImpl(
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsHistoryImplToJson(
        _$ClientWantsHistoryImpl instance) =>
    <String, dynamic>{
      'eventType': instance.$type,
    };

_$ClientWantsCurrentFountainStateImpl
    _$$ClientWantsCurrentFountainStateImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsCurrentFountainStateImpl(
          $type: json['eventType'] as String?,
        );

Map<String, dynamic> _$$ClientWantsCurrentFountainStateImplToJson(
        _$ClientWantsCurrentFountainStateImpl instance) =>
    <String, dynamic>{
      'eventType': instance.$type,
    };

_$ClientWantsToTurnOnFountainImpl _$$ClientWantsToTurnOnFountainImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToTurnOnFountainImpl(
      requestTime: (json['requestTime'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToTurnOnFountainImplToJson(
        _$ClientWantsToTurnOnFountainImpl instance) =>
    <String, dynamic>{
      'requestTime': instance.requestTime,
      'eventType': instance.$type,
    };

_$ServerSendsCurrentFountainstateImpl
    _$$ServerSendsCurrentFountainstateImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsCurrentFountainstateImpl(
          isOn: json['ison'] as bool,
          temperatur: (json['temperatur'] as num).toDouble(),
          timestamp: DateTime.parse(json['TimeStamp'] as String),
          $type: json['eventType'] as String?,
        );

Map<String, dynamic> _$$ServerSendsCurrentFountainstateImplToJson(
        _$ServerSendsCurrentFountainstateImpl instance) =>
    <String, dynamic>{
      'ison': instance.isOn,
      'temperatur': instance.temperatur,
      'TimeStamp': instance.timestamp.toIso8601String(),
      'eventType': instance.$type,
    };

_$ServerConfirmRequestToTurnOnImpl _$$ServerConfirmRequestToTurnOnImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerConfirmRequestToTurnOnImpl(
      message: json['message'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerConfirmRequestToTurnOnImplToJson(
        _$ServerConfirmRequestToTurnOnImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'eventType': instance.$type,
    };

_$ServerConfirmsRegistrationImpl _$$ServerConfirmsRegistrationImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerConfirmsRegistrationImpl(
      message: json['Message'] as String,
      userId: (json['UserId'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerConfirmsRegistrationImplToJson(
        _$ServerConfirmsRegistrationImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'UserId': instance.userId,
      'eventType': instance.$type,
    };

_$ServerConfirmsLoginImpl _$$ServerConfirmsLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerConfirmsLoginImpl(
      message: json['Message'] as String,
      token: json['Token'] as Object,
      userId: (json['UserId'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerConfirmsLoginImplToJson(
        _$ServerConfirmsLoginImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Token': instance.token,
      'UserId': instance.userId,
      'eventType': instance.$type,
    };

_$ServerSendsHistoryImpl _$$ServerSendsHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsHistoryImpl(
      tempReadings: (json['tempReadings'] as List<dynamic>)
          .map((e) => e as Object)
          .toList(),
      onTimeReadings: (json['onTimeReadings'] as List<dynamic>)
          .map((e) => e as Object)
          .toList(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerSendsHistoryImplToJson(
        _$ServerSendsHistoryImpl instance) =>
    <String, dynamic>{
      'tempReadings': instance.tempReadings,
      'onTimeReadings': instance.onTimeReadings,
      'eventType': instance.$type,
    };
