

import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/blochomepage/homepagestate.dart';
import 'package:watercat/broardcastwschannel.dart';
import 'package:watercat/models/events.dart';


class HomepageCubit extends Cubit<HomepageState>{
  HomepageCubit(this.channel) : super(
      HomepageState.isOffNow()
  ){
    initializeListener();
    getFountainName();
    getWaterfountainState();
  }
  final BroadcastWsChannel channel;
  //Subscription, that helps listen to incoming messages from backend
  late StreamSubscription _subscription;


  void initializeListener() {
    _subscription = channel.stream.listen((event) {
      final serverEvent = ServerEvent.fromJson(jsonDecode(event));
      if (serverEvent is ServerSendsCurrentFountainstate) {
        emit(state.copyWith(
            isOn: serverEvent.isOn,
            temperature: serverEvent.temperatur,
            timestamp: serverEvent.timestamp
        ));
      }
    });
  }

  turnOnWaterFountain(int minutesOn) async{
    final event = ClientEvent.clientWantsToTurnOnFountain(
        requestTime: minutesOn
    );

    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerConfirmRequestToTurnOn
    );
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerConfirmRequestToTurnOn) {
      print(serverEvent.message);
    }
    else{
      print("Incoming message could not be handled correctly");
    }
  }

  getFountainName() async {
    final event = ClientEvent.clientWantsFountainName(

    );
    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerSendsFountainName
    );
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerSendsFountainName) {
      emit(state.copyWith(
        fountainName: serverEvent.fountainName
      ));
    }
    else{
      print("Incoming fountain name could not be handled correctly");
    }
  }
  getWaterfountainState() async {
    final event = ClientEvent.clientWantsCurrentFountainState(

    );
    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerSendsCurrentFountainstate
    );
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerSendsCurrentFountainstate) {
      emit(state.copyWith(
          isOn: serverEvent.isOn,
          temperature: serverEvent.temperatur,
          timestamp: serverEvent.timestamp
      ));
    }
    else{
      print("Incoming message could not be handled correctly");
    }
  }
}
