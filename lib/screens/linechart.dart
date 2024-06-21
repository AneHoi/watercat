import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/events.dart';

class HistoryChart extends StatelessWidget {
  const HistoryChart(
      {super.key,
      required this.isShowingTempData,
      required this.datasetTemp,
      required this.datasetOnTime});

  final bool isShowingTempData;
  final List<Reading> datasetTemp;
  final List<Reading> datasetOnTime;

  @override
  Widget build(BuildContext context) {
    if (isShowingTempData) {
      return LineChart(
        temperatureData,
        duration: const Duration(milliseconds: 500),
      );
    } else {
      return BarChart(fountainOnTime);
    }
  }

  //_________________________________________Chart for Temperature____________________________________________
  LineChartData get temperatureData => LineChartData(
        lineTouchData: lineTouchData,
        gridData: const FlGridData(show: true),
        titlesData: titleData(true),
        borderData: borderData,
        //Data for the chart
        lineBarsData: [temperatureChart],
      );

  //When mouse is hovering or chart is touched
  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.black.withOpacity(0.8),
        ),
      );

  LineChartBarData get temperatureChart => LineChartBarData(
        isCurved: true,
        preventCurveOverShooting: false,
        curveSmoothness: 0.35,
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(255, 1, 1, 1.0),
          Color.fromRGBO(170, 70, 130, 1.0),
          Color.fromRGBO(68, 96, 207, 1.0)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: spotsTemperature(),
      );

  List<FlSpot> spotsTemperature() {
    List<FlSpot> flSpots = [];

    for (var reading in datasetTemp) {
      double time = reading.timestamp.day.toDouble() +
          reading.timestamp.hour.toDouble() / 24;
      double xValue = double.parse((time).toStringAsFixed(1));
      double point = double.parse(
          (xValue + reading.timestamp.minute.toDouble() / 60 / 10)
              .toStringAsFixed(3));
      flSpots.add(FlSpot(point, double.parse((reading.value).toStringAsFixed(2))));
      //print("Point: " + point.toString() + " val: " + reading.value.toString());
    }

    return flSpots;
  }

  //_________________________________________Chart for fountain on time____________________________________________

  BarChartData get fountainOnTime => BarChartData(
        barTouchData: barTouchData,
        gridData: const FlGridData(show: true),
        titlesData: titleData(false),
        borderData: borderData,
        alignment: BarChartAlignment.spaceAround,
        barGroups: onTimeData(),
      );

  BarTouchData get barTouchData => BarTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (_) => Colors.black.withOpacity(0.8),
        ),
      );

  List<BarChartGroupData> onTimeData() {
    List<BarChartGroupData> bars = [];
    for (int i = datasetOnTime.length-1; i >= 0; i--) {
      int time = datasetOnTime[i].timestamp.day.toInt();
      var bar = BarChartGroupData(x: time, barRods: [
        BarChartRodData(toY: double.parse((datasetOnTime[i].value / 60).toStringAsFixed(1)), gradient: _barsGradient)
      ],
      );
      bars.add(bar);
    }
    return bars;
  }

  LinearGradient get _barsGradient => const LinearGradient(
        colors: [
          Color.fromRGBO(0, 101, 255, 1.0),
          Color.fromRGBO(177, 205, 248, 1.0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  //_________________________________________Commons for Charts____________________________________________
  FlTitlesData titleData(bool temp) {
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      leftTitles: AxisTitles(
          sideTitles: SideTitles(
            getTitlesWidget: leftTitleWidgetsValues,
            showTitles: true,
            reservedSize: 40,
          )
      ),
    );
  }

  //Y-axis Values
  Widget leftTitleWidgetsValues(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text =
        isShowingTempData ? "${value.toInt()} C " : "${value.toInt()} min";
    return Text(text, style: style, textAlign: TextAlign.center);
  }

  //Bottom values
  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        getTitlesWidget: bottomTitleWidgets,
      );

  //X-axis Values
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text = Text(value.toInt().toString(), style: style);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  //Data on the decoration of the borders for the charts
  FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: Color.fromRGBO(255, 219, 219, 1.0), width: 4),
        left: BorderSide(color: Color.fromRGBO(255, 219, 219, 1.0), width: 4),
        right: BorderSide(color: Colors.transparent),
        top: BorderSide(color: Colors.transparent),
      ));
}
