import 'package:flutter/foundation.dart';

@immutable
class HomepageState {
  final String fountainName;
  final int requestedOnTime;
  final bool isOn;
  final double temperature;
  final DateTime timestamp;

  const HomepageState(
      {required this.fountainName,
      required this.requestedOnTime,
      required this.isOn,
      required this.temperature,
      required this.timestamp});

  //the states this can be
  factory HomepageState.isOffNow() {
    return HomepageState(
        fountainName: "My fountain",
        requestedOnTime: 0,
        temperature: 0,
        timestamp: DateTime.parse('1970-01-01 00:00:04Z'),
        isOn: false);
  }

  HomepageState copyWith(
      {String? fountainName,
      int? requestedOnTime,
      bool? isOn,
      double? temperature,
      DateTime? timestamp}) {
    return HomepageState(
        fountainName: fountainName ?? this.fountainName,
        requestedOnTime: requestedOnTime ?? this.requestedOnTime,
        isOn: isOn ?? this.isOn,
        temperature: temperature ?? this.temperature,
        timestamp: timestamp ?? this.timestamp);
  }
}
