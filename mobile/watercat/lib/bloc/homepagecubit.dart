

import 'dart:convert';
import 'dart:html';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/homepagestate.dart';
import 'package:watercat/broardcastwschannel.dart';
import 'package:watercat/models/events.dart';


class HomepageCubit extends Cubit<HomepageState>{
  HomepageCubit(this.channel) : super(HomepageState.isOfNow());
  final BroadcastWsChannel channel;


  Future<bool> getWaterfountainState() async {
    print("triggered");
    final event = ClientEvent.clientWantsCurrentFountainState(
      email: "username",
    );
    channel.sink.add(jsonEncode(event.toJson()));
    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere(
          (event) => event is ServerSendsCurrentFountainstate
    );
    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerSendsCurrentFountainstate) {
      print("response");
      return serverEvent.isOn;
    }
    else{
      print("no success");
      return false;
    }
  }
}
