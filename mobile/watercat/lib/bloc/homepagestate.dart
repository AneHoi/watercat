import 'package:flutter/foundation.dart';

@immutable
class HomepageState {
  final int requestedOnTime;
  final bool isOn;
  final double temperature;
  final DateTime timestamp;

  const HomepageState(
      {required this.requestedOnTime,
      required this.isOn,
      required this.temperature,
      required this.timestamp});

  //the states this can be
  factory HomepageState.isOffNow() {
    return HomepageState(
        requestedOnTime: 0, temperature: 0, timestamp: DateTime.parse('1970-01-01 00:00:04Z'), isOn: false);
  }

  HomepageState copyWith(
      {int? requestedOnTime,
      bool? isOn,
      double? temperature,
      DateTime? timestamp}) {
    return HomepageState(
        requestedOnTime: requestedOnTime ?? this.requestedOnTime,
        isOn: isOn ?? this.isOn,
        temperature: temperature ?? this.temperature,
        timestamp: timestamp ?? this.timestamp);
  }
}
