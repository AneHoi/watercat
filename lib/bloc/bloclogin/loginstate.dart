import 'package:flutter/foundation.dart';

@immutable
class LoginState {
  final bool loggedIn;
  final int deviceId;
  final String userName;
  final String userEmail;

  const LoginState({
    required this.loggedIn,
    required this.deviceId,
    required this.userName,
    required this.userEmail
  });

  factory LoginState.notLoggedIn() {
    return LoginState(
        loggedIn: false, deviceId: 0, userName: "", userEmail: "");
  }

  LoginState copyWith({
    bool? loggedIn,
    int? deviceId,
    String? userName,
    String? userEmail
  }
      ) {
    return LoginState(
        loggedIn: loggedIn ?? this.loggedIn,
        deviceId: deviceId ?? this.deviceId,
        userName: userName ?? this.userName,
        userEmail: userEmail ?? this.userEmail);
  }
}
