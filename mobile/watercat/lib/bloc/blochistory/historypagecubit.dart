import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../broardcastwschannel.dart';
import '../../models/events.dart';
import 'historystate.dart';

class HistoryPageCubit extends Cubit<HistoryState> {
  HistoryPageCubit(this.channel) : super(HistoryState.empty()) {
    getWaterFountainHistory();
  }

  final BroadcastWsChannel channel;


  getWaterFountainHistory() async {
    final event = ClientEvent.clientWantsHistory();

    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerSendsHistory);
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if(serverEvent is ServerSendsHistory){
      emit(state.copyWith(
          temperatureReadings: serverEvent.tempReadings,
          onTimeReadings: serverEvent.onTimeReadings
      ));
    }
  }
}
