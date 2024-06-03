import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'events.freezed.dart';
part 'events.g.dart';

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
    @JsonKey(name: 'isOn') required bool isOn
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