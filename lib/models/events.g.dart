// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reading _$ReadingFromJson(Map<String, dynamic> json) => Reading(
      value: (json['value'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ReadingToJson(Reading instance) => <String, dynamic>{
      'value': instance.value,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$ClientWantsToLogInImpl _$$ClientWantsToLogInImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogInImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToLogInImplToJson(
        _$ClientWantsToLogInImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'eventType': instance.$type,
    };

_$ClientWantsToRegisterImpl _$$ClientWantsToRegisterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToRegisterImpl(
      deviceId: (json['deviceId'] as num).toInt(),
      deviceName: json['deviceName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      username: json['username'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToRegisterImplToJson(
        _$ClientWantsToRegisterImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'eventType': instance.$type,
    };

_$ClientWantsFountainNameImpl _$$ClientWantsFountainNameImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsFountainNameImpl(
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsFountainNameImplToJson(
        _$ClientWantsFountainNameImpl instance) =>
    <String, dynamic>{
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

_$ServerAuthenticatesUserImpl _$$ServerAuthenticatesUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthenticatesUserImpl(
      token: json['Jwt'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerAuthenticatesUserImplToJson(
        _$ServerAuthenticatesUserImpl instance) =>
    <String, dynamic>{
      'Jwt': instance.token,
      'eventType': instance.$type,
    };

_$ServerSendsFountainNameImpl _$$ServerSendsFountainNameImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsFountainNameImpl(
      fountainName: json['fountainName'] as String,
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerSendsFountainNameImplToJson(
        _$ServerSendsFountainNameImpl instance) =>
    <String, dynamic>{
      'fountainName': instance.fountainName,
      'eventType': instance.$type,
    };

_$ServerSendsHistoryImpl _$$ServerSendsHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsHistoryImpl(
      tempReadings: (json['tempReadings'] as List<dynamic>)
          .map((e) => Reading.fromJson(e as Map<String, dynamic>))
          .toList(),
      onTimeReadings: (json['onTimeReadings'] as List<dynamic>)
          .map((e) => Reading.fromJson(e as Map<String, dynamic>))
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
