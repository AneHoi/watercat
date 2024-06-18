import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../bloc/blochistory/historystate.dart';

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

  factory ClientEvent.clientWantsHistory() = ClientWantsHistory;


  factory ClientEvent.clientWantsCurrentFountainState() =
  ClientWantsCurrentFountainState;

  factory ClientEvent.clientWantsToTurnOnFountain({
    @JsonKey(
        name: 'requestTime') required int requestTime}) = ClientWantsToTurnOnFountain;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);
}

@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ServerEvent with _$ServerEvent implements BaseEvent {
  factory ServerEvent.serverSendsCurrentFountainstate(
      {@JsonKey(name: 'ison') required bool isOn,
        @JsonKey(name: 'temperatur') required double temperatur,
        @JsonKey(name: 'TimeStamp') required DateTime timestamp
      }) =
  ServerSendsCurrentFountainstate;

  factory ServerEvent.ServerConfirmRequestToTurnOn(
      {@JsonKey(name: 'message') required String message}) =
  ServerConfirmRequestToTurnOn;

  factory ServerEvent.serverConfirmsRegistration({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'UserId') required int userId,
  }) = ServerConfirmsRegistration;

  factory ServerEvent.serverConfirmsLogin({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Token') required Object token,
    @JsonKey(name: 'UserId') required int userId,
  }) = ServerConfirmsLogin;

  factory ServerEvent.serverSendsHistory({
    @JsonKey(name: 'tempReadings') required List<Reading> tempReadings,
    @JsonKey(name: 'onTimeReadings') required List<Reading> onTimeReadings
  }) = ServerSendsHistory;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);
}

@JsonSerializable()
class Reading {
  late final double value;
  late final DateTime timestamp;

  Reading({required this.value, required this.timestamp});

  factory Reading.fromJson(Map<String, dynamic> json) =>
      _$ReadingFromJson(json);

  Map<String, dynamic> toJson() => _$ReadingToJson(this);
}