
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class HistoryState {
  final List<Reading> temperatureReadings;
  final List<Reading> onTimeReadings;

  const HistoryState(
      {
        required this.temperatureReadings,
        required this.onTimeReadings
      });

  //the states this can be
  factory HistoryState.empty() {
    return const HistoryState(
        temperatureReadings: [],
        onTimeReadings: []
    );
  }

  HistoryState copyWith(
      {List<Reading>? temperatureReadings,
        List<Reading>? onTimeReadings
      }) {
    print("firts temp: ");
    print(temperatureReadings?.first.value.toString());

    return HistoryState(
        temperatureReadings: temperatureReadings ?? this.onTimeReadings,
        onTimeReadings: temperatureReadings ?? this.onTimeReadings

    );
  }
}

class Reading {
  late final double value;
  late final DateTime timestamp;
}
