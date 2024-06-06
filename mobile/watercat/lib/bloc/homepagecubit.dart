

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/homepagestate.dart';
import 'package:watercat/broardcastwschannel.dart';
import 'package:watercat/models/events.dart';


class HomepageCubit extends Cubit<HomepageState>{
  HomepageCubit(this.channel) : super(
      HomepageState.isOffNow()
  ){
    getWaterfountainState();
  }
  final BroadcastWsChannel channel;



  getWaterfountainState() async {
    print("triggered");
    final event = ClientEvent.clientWantsCurrentFountainState(
      email: "username",
    );
    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere(
          (event) => event is ServerSendsCurrentFountainstate
    );
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerSendsCurrentFountainstate) {
      emit(state.copyWith(isOn: serverEvent.isOn, temperature: serverEvent.temperatur, timestamp: serverEvent.timestamp));
      print("response");
    }
    else{
      print("no success");

    }
  }
}
