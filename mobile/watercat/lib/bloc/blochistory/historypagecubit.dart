import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../broardcastwschannel.dart';
import '../../models/events.dart';
import 'historystate.dart';

class HistoryPageCubit extends Cubit<HistoryState> {
  HistoryPageCubit(this.channel) : super(HistoryState.empty()) {
    initializeListener();
    getWaterFountainHistory();
  }

  final BroadcastWsChannel channel;

  //Subscription, that helps listen to incoming messages from backend
  late StreamSubscription _subscription;

  void initializeListener() {
    _subscription = channel.stream.listen((event) {
      final serverEvent = ServerEvent.fromJson(jsonDecode(event));
      if (serverEvent is ServerSendsHistory) {
        print('recieved history');
        emit(state.copyWith(
            temperatureReadings: serverEvent.tempReadings,
            onTimeReadings: serverEvent.onTimeReadings
        ));
      }
    });
  }
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
