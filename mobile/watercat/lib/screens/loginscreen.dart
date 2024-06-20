import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:watercat/bloc/bloclogin/logincubit.dart';
import 'package:watercat/bloc/bloclogin/loginstate.dart';
import 'package:watercat/screens/homescreen.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../broardcastwschannel.dart';
import 'registetionscreen.dart';
import 'small_widget_helpers/backgroundgradient.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundcolors(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: getCenterBox(LoginContent(), true),
      ),
    );
  }
}

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<StatefulWidget> createState() => _LoginContent();
}

class _LoginContent extends State<LoginContent> {
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;

    return BlocProvider(
        create: (context) => LoginCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.deviceId;
              isLoggedIn = state.loggedIn;
            },
            builder: (context, state) {
              return UserContent();
            }));
  }
}

class UserContent extends StatelessWidget {
  const UserContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final borderData = OutlineInputBorder(
        borderSide: const BorderSide(width: 0, color: Color.fromRGBO(
            21, 12, 12, 1.0)),
        borderRadius: BorderRadius.circular(25.7));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Email",
                border: borderData,
                focusedBorder: borderData,
                enabledBorder: borderData,
                fillColor: Colors.blue.withOpacity(0.2),
                filled: true,

            ),
          ),
          const SizedBox(height: 10),
          PasswordField(
            controller: passwordController,
            backgroundColor: Colors.blue.withOpacity(0.2),
            errorMessage: '''
- A uppercase letter
- A lowercase letter
- A digit
- A special character
- A minimum length of 8 characters
 ''',
            hintText: 'Password',
            passwordDecoration: PasswordDecoration(
              inputPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            border: PasswordBorder(
              border: borderData,
              focusedBorder: borderData,
              enabledBorder: borderData,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              print("Enter 1");
              await context.read<LoginCubit>().loginUser("anehoimark@gmail.com", "Qwerty!234");
              //await context.read<LoginCubit>().loginUser(emailController.text, passwordController.text);
              print("entered");
              if(await context.read<LoginCubit>().isUserAuthenticated()){
                print("going to homepage");
                _goToHomePage(context, HomeScreen.new);
              }else{
                print("not going to homepage");

              }
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 30, right: 30),
            child: ElevatedButton(
              onPressed: () async {
                _goToHomePage(context, RegistrationScreen.new);
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Color.fromRGBO(0, 11, 97, 1.0),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


_goToHomePage(BuildContext context, Widget Function({Key? key}) constructor) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => constructor.call()),
  );
}