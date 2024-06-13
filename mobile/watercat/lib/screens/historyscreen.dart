import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watercat/bloc/blochistory/historypagecubit.dart';
import 'package:watercat/bloc/blochistory/historystate.dart';
import 'package:watercat/lineChart.dart';

import 'package:watercat/screens/small_widget_helpers/screenlayout.dart';

import '../broardcastwschannel.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return getLayout(HistoryContent(), "History", context);
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
  bool showTempData = true;
  List<Reading> tempData = [];
  List<Reading> onTimeData = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HistoryPageCubit(context.read<BroadcastWsChannel>()),
        child: BlocConsumer<HistoryPageCubit, HistoryState>(
            listener: (context, state) {
              tempData = state.temperatureReadings;
              onTimeData = state.onTimeReadings;
            }, builder: (context, state) {

          return getCenterBox(
        Column(
          children: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded, color: Colors.white),
                tooltip: 'Refresh',
                onPressed: () {
                  setState(() {
                    showTempData = !showTempData;
                  });
                }),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: HistoryChart(isShowingTempData: showTempData, datasetTemp: tempData, datasetOnTime: onTimeData),
            ),
          ],
        ),
        false
    );
  }));
  }
}
