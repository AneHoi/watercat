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

_$ClientWantsCurrentFountainStateImpl
    _$$ClientWantsCurrentFountainStateImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsCurrentFountainStateImpl(
          email: json['email'] as String,
          $type: json['eventType'] as String?,
        );

Map<String, dynamic> _$$ClientWantsCurrentFountainStateImplToJson(
        _$ClientWantsCurrentFountainStateImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'eventType': instance.$type,
    };

_$ServerSendsCurrentFountainstateImpl
    _$$ServerSendsCurrentFountainstateImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsCurrentFountainstateImpl(
          isOn: json['isOn'] as bool,
          $type: json['eventType'] as String?,
        );

Map<String, dynamic> _$$ServerSendsCurrentFountainstateImplToJson(
        _$ServerSendsCurrentFountainstateImpl instance) =>
    <String, dynamic>{
      'isOn': instance.isOn,
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
