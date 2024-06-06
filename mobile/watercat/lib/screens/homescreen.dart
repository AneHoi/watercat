import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../bloc/homepagecubit.dart';
import '../bloc/homepagestate.dart';
import '../broardcastwschannel.dart';
import 'small_widget_helpers/toggleswitch.dart';

const appTitle = 'My fountain';
bool ison = false;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return getLayout(HomeContent(), "Home", context);
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({
    super.key,
  });

  @override
  State<HomeContent> createState() => _HomeContent();
}

class _HomeContent extends State<HomeContent> {
  bool ison = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomepageCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<HomepageCubit, HomepageState>(
            listener: (context, state) {
          ison = getcurrentstate(state);
        }, builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 800),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ison
                            ? Color.fromARGB(143, 217, 217, 217)
                            : Color.fromARGB(66, 0, 0, 0),
                      ),
                      color: ison
                          ? Color.fromARGB(143, 217, 217, 217)
                          : Color.fromARGB(143, 159, 154, 154),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40))),
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                child: Text(appTitle,
                                    style: TextStyle(fontSize: 30)),
                              ),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      icon: Icon(Icons.refresh_rounded),
                                      onPressed: () async {
                                        bool result = await context
                                            .read<HomepageCubit>()
                                            .getWaterfountainState();
                                        // This is called when the user toggles the switch.
                                        setState(() {
                                          ison = result;
                                        });
                                      },
                                    )),
                              ),
                            ],
                          ),
                          Container(
                              constraints:
                                  BoxConstraints(minWidth: 50, maxWidth: 300),
                              child: Image.asset('assets/fountain.png')),
                          Switch(
                            // This bool value toggles the switch.
                            value: ison,
                            activeTrackColor:
                                const Color.fromRGBO(89, 121, 238, 1.0),
                            activeColor:
                                const Color.fromRGBO(255, 255, 255, 1.0),

                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1.0),
                            inactiveThumbColor:
                                const Color.fromRGBO(0, 0, 0, 1.0),
                            onChanged: (bool value) async {},
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Text(getStateText(state)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.thermostat),
                                  Text(getTempStateText(state))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }

  String getStateText(HomepageState state) {
    String stateText = state.isOn ? "On" : "Off";
    if(state.timestamp.isNotEmpty){
      String time = state.timestamp.substring(11,16);
      stateText = stateText + " since: " + time;
    }

    return stateText;
  }

  String getTempStateText(HomepageState state) {
    return state.temperature.toString();
  }

  bool getcurrentstate(HomepageState state) {
    print("Is water on?: ");
    print(state.isOn);
    print(" it has been since: " + state.timestamp);
    return state.isOn;
  }
}
