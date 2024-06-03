
import 'package:flutter/foundation.dart';

@immutable
class HomepageState {
  final bool isOn;

  const HomepageState({required this.isOn});

  //the states this can be
  factory HomepageState.isOnNow(){
    return HomepageState(isOn: true);
  }
  factory HomepageState.isOfNow(){
    return HomepageState(isOn: false);
  }
  HomepageState copyWith({
    bool? isOn
  }){
    return HomepageState(isOn: isOn ?? this.isOn);
  }
}