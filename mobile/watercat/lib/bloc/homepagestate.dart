
import 'package:flutter/foundation.dart';

@immutable
class HomepageState {
  final bool isOn;
  final double temperature;
  final String timestamp;

  const HomepageState({required this.isOn, required this.temperature, required this.timestamp});

  //the states this can be
  factory HomepageState.isOffNow(){
    return HomepageState(temperature: 0, timestamp: "", isOn: false);
  }

  HomepageState copyWith({
    bool? isOn,
    double? temperature,
    String? timestamp
  }){
    return HomepageState(
      isOn: isOn ?? this.isOn,
      temperature: temperature ?? this.temperature,
      timestamp: timestamp ?? this.timestamp
    );
  }
}