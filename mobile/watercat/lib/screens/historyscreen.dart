import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/blochistory/historypagecubit.dart';
import 'package:watercat/bloc/blochistory/historystate.dart';
import 'package:watercat/screens/lineChart.dart';

import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../broardcastwschannel.dart';
import '../models/events.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return getLayout(const HistoryContent(), "History", context);
  }
}

class HistoryContent extends StatefulWidget {
  const HistoryContent({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HistoryContent();
}

class _HistoryContent extends State<HistoryContent>{
  bool showTempData = false;
  List<Reading> tempData = [];
  List<Reading> onTimeData = [];

  TextStyle style = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HistoryPageCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<HistoryPageCubit, HistoryState>(
            listener: (context, state) {
              //tempData = state.temperatureReadings;
              //onTimeData = state.onTimeReadings;
            }, builder: (context, state) {

          return getCenterBox(
        Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20.0),
                child: showTempData ? Text("Avg temperatures last days ", style: style) : Text("Minutes turned on pr day", style: style)),

            AspectRatio(
              aspectRatio: 16 / 9,
              child: HistoryChart(
                  isShowingTempData: showTempData,
                  datasetTemp: state.temperatureReadings,
                  datasetOnTime: state.onTimeReadings
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: Text("Change data", style: style)),
            Switch(
              // This bool value toggles the switch.
              value: showTempData,
              activeTrackColor: const Color.fromRGBO(89, 121, 238, 1.0),
              activeColor: getWhiteColor(),

              inactiveTrackColor: getWhiteColor(),

              inactiveThumbColor: const Color.fromRGBO(0, 0, 0, 1.0),
              onChanged: (bool value) async {
                setState(() {
                  showTempData = !showTempData;
                });
              },
            ),
          ],
        ),
        false
    );
  }));
  }
}
