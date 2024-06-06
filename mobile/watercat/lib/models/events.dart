import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'events.freezed.dart';
part 'events.g.dart';
//When anything is updated run this in terminal:
//dart run build_runner build
interface class BaseEvent {}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ClientEvent with _$ClientEvent implements BaseEvent {

  factory ClientEvent.clientWantsToLogIn({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = ClientWantsToLogIn;

  factory ClientEvent.clientWantsCurrentFountainState({
    @JsonKey(name: 'email') required String email
}) = ClientWantsCurrentFountainState;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);
}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ServerEvent with _$ServerEvent implements BaseEvent {

  factory ServerEvent.serverSendsCurrentFountainstate({
    @JsonKey(name: 'ison') required bool isOn,
    @JsonKey(name: 'temperatur') required double temperatur,
    @JsonKey(name: 'TimeStamp') required String timestamp
}) = ServerSendsCurrentFountainstate;

  factory ServerEvent.serverConfirmsRegistration({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'UserId') required int userId,
  }) = ServerConfirmsRegistration;

  factory ServerEvent.serverConfirmsLogin({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Token') required Object token,
    @JsonKey(name: 'UserId') required int userId,
  }) = ServerConfirmsLogin;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);
}