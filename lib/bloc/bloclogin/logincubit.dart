

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/bloclogin/loginstate.dart';
import 'package:watercat/broardcastwschannel.dart';

import '../../models/events.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit(this.channel) : super(
    LoginState.notLoggedIn()
  );
  final BroadcastWsChannel channel;

  registerUser(
      int deviceId,
      String deviceName,
      String email,
      String password,
      String username,
      ) async {
    print("registration");
    final event = ClientEvent.clientWantsToRegister(deviceId: deviceId, deviceName: deviceName, email: email, password: password, username: username);
    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerAuthenticatesUser
    );
    channel.sink.add(jsonEncode(event.toJson()));
    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));

    if(serverEvent is ServerAuthenticatesUser){
      print("recieved auth");
    }

  }

  Future<bool> isUserAuthenticated() async{
    return state.loggedIn;
  }


  loginUser(String email, String password) async {
    final event = ClientEvent.clientWantsToLogIn(email: email, password: password);

    final serverEventFuture = channel.stream
        .map((event) => ServerEvent.fromJson(jsonDecode(event)))
        .firstWhere((event) => event is ServerAuthenticatesUser
    );
    channel.sink.add(jsonEncode(event.toJson()));

    final serverEvent = await serverEventFuture.timeout(Duration(seconds: 5));
    if (serverEvent is ServerAuthenticatesUser) {
      print("so far so good");
      emit(state.copyWith(loggedIn: true));
    }
    else{
      print("Incoming message could not be handled correctly");
    }
  }
}