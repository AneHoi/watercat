import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:watercat/bloc/bloclogin/logincubit.dart';
import 'package:watercat/bloc/bloclogin/loginstate.dart';
import 'package:watercat/screens/loginscreen.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../broardcastwschannel.dart';
import 'small_widget_helpers/backgroundgradient.dart';
import 'small_widget_helpers/navigatorbar.dart';

// Registration screen
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundcolors(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: getCenterBox(RegistrationContent(), true),
      ),
    );
  }
}

class RegistrationContent extends StatefulWidget {
  const RegistrationContent({super.key});

  @override
  State<StatefulWidget> createState() => _RegistrationContent();
}

class _RegistrationContent extends State<RegistrationContent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {},
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
    final TextEditingController deviceIdController = TextEditingController();
    final TextEditingController deviceNameController = TextEditingController();
    final TextEditingController usernameController = TextEditingController();


    final borderData = OutlineInputBorder(
        borderSide: const BorderSide(width: 0, color: Color.fromRGBO(
            21, 12, 12, 1.0)),
        borderRadius: BorderRadius.circular(25.7));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTextField("Fountain Id", deviceIdController, borderData),
          const SizedBox(height: 10),

          buildTextField("Fountain name", deviceNameController, borderData),
          const SizedBox(height: 10),

          buildTextField("Username", usernameController, borderData),
          const SizedBox(height: 10),

          buildTextField("Email", emailController, borderData),
          const SizedBox(height: 10),

          PasswordField(
            controller: passwordController,
            backgroundColor: Colors.blue.withOpacity(0.2),
            errorMessage: '''
Recommendations are:
- A uppercase and lowercase letter
- A digit and special character
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
              int id = int.parse(deviceIdController.text);
              print("id: " + id.toString());

              await context.read<LoginCubit>().registerUser(id, deviceNameController.text, emailController.text, passwordController.text, usernameController.text);
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              "Register",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),


          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 30, right: 30),
            child: ElevatedButton(
              onPressed: () async {
                _onMenuTap(context, LoginScreen.new);
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Color.fromRGBO(0, 11, 97, 1.0),
              ),
              child: const Text(
                "Back to login",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          BottomNavigationbar()
        ],
      ),
    );
  }

  TextField buildTextField(String fieldHint, TextEditingController textController, OutlineInputBorder borderData) {
    return TextField(
          controller: textController,
          decoration: InputDecoration(
            hintText: fieldHint,
            border: borderData,
            focusedBorder: borderData,
            enabledBorder: borderData,
            fillColor: Colors.blue.withOpacity(0.2),
            filled: true,
          ),
        );
  }
}


_onMenuTap(BuildContext context, Widget Function({Key? key}) constructor) {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => constructor.call()),
  );
}