import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../bloc/homepagecubit.dart';
import '../bloc/homepagestate.dart';
import '../broardcastwschannel.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return getLayout(HistoryContent(), "History", context);
  }
}

class HistoryContent extends StatelessWidget {
  const HistoryContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 800),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(143, 217, 217, 217),
                ),
                color: const Color.fromARGB(143, 217, 217, 217),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        constraints: BoxConstraints(
                            minWidth: 100, maxWidth: 300, maxHeight: 150),
                        child: Image.asset('assets/fountain.png')
                    ),
                    LoginToggleSwitch()
                  ],

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginToggleSwitch extends StatefulWidget {
  const LoginToggleSwitch({super.key});

  @override
  State<LoginToggleSwitch> createState() => _LoginToggleSwitchState();
}

class _LoginToggleSwitchState extends State<LoginToggleSwitch> {
  bool ison = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomepageCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<HomepageCubit, HomepageState>(
            listener: (context, state) {
              ison = state.isOn;
            },
            builder: (context, state) {
              return
                  Switch(
                    // This bool value toggles the switch.
                    value: ison,
                    activeTrackColor: const Color.fromRGBO(89, 121, 238, 1.0),
                    activeColor: const Color.fromRGBO(255, 255, 255, 1.0),

                    inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1.0),
                    inactiveThumbColor: const Color.fromRGBO(0, 0, 0, 1.0),
                    onChanged: (bool value) async {
                      bool result = await context.read<HomepageCubit>().getWaterfountainState();
                      // This is called when the user toggles the switch.
                      setState(() {
                        ison = result;
                      });
                    },
              );
            }
        )
    );
  }
}