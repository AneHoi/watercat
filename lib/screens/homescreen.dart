import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../bloc/blochomepage/homepagecubit.dart';
import '../bloc/blochomepage/homepagestate.dart';
import '../broardcastwschannel.dart';

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
  String fountainName = "";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomepageCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<HomepageCubit, HomepageState>(
            listener: (context, state) {
          ison = state.isOn;
          fountainName = state.fountainName;
        }, builder: (context, state) {
          return getCenterBox(buildHomepageContent(context, state), ison);
        }
        )
    );
  }

  Column buildHomepageContent(BuildContext context, HomepageState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(fountainName, style: TextStyle(fontSize: 30, color: ison ? Colors.black : Colors.white)),
        ),
        Container(
            constraints: BoxConstraints(minWidth: 50, maxWidth: 300),
            child: Image.asset('assets/fountain.png')),
        Switch(
          // This bool value toggles the switch.
          value: ison,
          activeTrackColor: const Color.fromRGBO(89, 121, 238, 1.0),
          activeColor: getWhiteColor(),

          inactiveTrackColor: getWhiteColor(),

          inactiveThumbColor: const Color.fromRGBO(0, 0, 0, 1.0),
          onChanged: (bool value) async {
            await context.read<HomepageCubit>().turnOnWaterFountain(10);
            ison = value;
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.access_time),
                Text(getStateText(state), style: TextStyle(color: ison ? Colors.black : Colors.white),),
              ],
            ),
            Row(
              children: [Icon(Icons.thermostat), Text(getTempStateText(state), style: TextStyle(color: ison ? Colors.black : Colors.white),)],
            )
          ],
        )
      ],
    );
  }

  String getStateText(HomepageState state) {
    String stateText = state.isOn ? "On" : "Off";
    if (state.timestamp.isAfter(DateTime.parse('1969-01-01 00:00:04Z'))) {
      String hour = state.timestamp.hour.toString();
      String minutes = state.timestamp.minute.toString();
      stateText = stateText + " since: " + hour + ":" + minutes;
    }
    return stateText;
  }

  String getTempStateText(HomepageState state) {
    return state.temperature.toStringAsFixed(1);
  }
}
