import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '/models/sensor.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  DateTime x;
  double y;
}

class ChartPage extends StatefulWidget {
  final String chartType;

  final Map<String, List<SensorData>> modalityData;
  //final List<SensorData> sensordata;
  const ChartPage({
    super.key,
    required this.chartType,
    //required this.sensordata,
    required this.modalityData,
  });

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final Map<String, List<ChartData>> chartData = {};
  List<ChartData> data = [];
  //List<ChartData> chartData = [];
  bool isFullscreen = false;
  String modalityName = '';

  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _zoomPanBehavior = ZoomPanBehavior(
        enableDoubleTapZooming: true,
        enablePinching: true,
        // Enables the selection zooming
        enableSelectionZooming: true);

    widget.modalityData.forEach((key, value) {
      for (var element in value) {
        if (element.d.isNotEmpty) {
          print("key: $key");
          data.add(ChartData(timestamp_convert(element.ts), element.d[0]));
          data.sort((a, b) => a.x.compareTo(b.x));
          chartData[key] = data;
          print(chartData[key]);
        }
        //chartData.sort((a, b) => b.x.compareTo(a.x));
      }
    });

    // for (var element in widget.sensordata) {
    //   if (element.d.isNotEmpty) {
    //     chartData.add(ChartData(timestamp_convert(element.ts), element.d[0]));
    //     chartData.sort((a, b) => b.x.compareTo(a.x));
    //   }
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CartesianSeries<ChartData, DateTime>> getSeries() {
      switch (widget.chartType) {
        case "bar chart":
          return <CartesianSeries<ChartData, DateTime>>[
            ColumnSeries<ChartData, DateTime>(
              name: "Sensor 2",
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 2'],
              width: 0.75,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              sortFieldValueMapper: (ChartData data, _) => data.x,
              color: Colors.orange,
            ),
            ColumnSeries<ChartData, DateTime>(
              name: "Sensor 1",
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 1'],
              width: 0.75,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              sortFieldValueMapper: (ChartData data, _) => data.x,
              color: Colors.green,
              yAxisName: "Sensor 1",
            ),
          ];
        case "trend Chart":
          return <CartesianSeries<ChartData, DateTime>>[
            SplineSeries<ChartData, DateTime>(
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 2'],
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              color: Colors.orange,
            ),
            SplineSeries<ChartData, DateTime>(
              name: "Sensor 1",
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 1'],
              width: 0.75,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              sortFieldValueMapper: (ChartData data, _) => data.x,
              color: Colors.green,
              yAxisName: "Sensor 1",
            ),
          ];
        case "scatter Chart":
          return <CartesianSeries<ChartData, DateTime>>[
            ScatterSeries<ChartData, DateTime>(
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 2'],
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              markerSettings: const MarkerSettings(
                  height: 15,
                  width: 15,
                  // Scatter will render in diamond shape
                  shape: DataMarkerType.rectangle),
              color: Colors.orange,
            ),
            ScatterSeries<ChartData, DateTime>(
              name: "Sensor 1",
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 1'],
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              sortFieldValueMapper: (ChartData data, _) => data.x,
              color: Colors.green,
              yAxisName: "Sensor 1",
            ),
          ];
        case "line chart":
          return <CartesianSeries<ChartData, DateTime>>[
            LineSeries<ChartData, DateTime>(
              selectionBehavior: SelectionBehavior(enable: true),
              name: "Sensor 2",
              dataSource: chartData['Sensor 2'],
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              color: Colors.red,
            ),
            LineSeries<ChartData, DateTime>(
              name: "Sensor 1",
              selectionBehavior: SelectionBehavior(enable: true),
              dataSource: chartData['Sensor 1'],
              width: 0.75,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              sortFieldValueMapper: (ChartData data, _) => data.x,
              color: Colors.green,
              yAxisName: "Sensor 1",
            ),
          ];
        default:
          return [];
      }
    }

    String getTitle(String charttype) {
      switch (charttype) {
        case 'bar chart':
          return "Bar Chart";
        case 'line chart':
          return "Line Chart";
        case "trend chart'":
          return "Trend Chart";
        case 'scatter chart':
          return "Scatter Chart";
        default:
          return "";
      }
    }

    List<ChartAxis> getSecondaryAxis(List<String> keys) {
      List<ChartAxis> chartaxis = [];
      if (keys.length > 1) {
        for (var i = 0; i < keys.length; i++) {
          chartaxis.add(NumericAxis(
              name: keys[i],
              title: AxisTitle(text: keys[i]),
              opposedPosition: true));
        }
        return chartaxis;
      }
      return chartaxis;
    }

    final chartWidget = SfCartesianChart(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 40),
        zoomPanBehavior: _zoomPanBehavior,
        tooltipBehavior: TooltipBehavior(enable: true),
        primaryXAxis: DateTimeCategoryAxis(
          intervalType: DateTimeIntervalType.hours,
          title: const AxisTitle(text: "TimeStamp"),
          dateFormat: DateFormat.j(),
        ),
        primaryYAxis: NumericAxis(title: AxisTitle(text: chartData.keys.last)),
        title: ChartTitle(text: getTitle(widget.chartType)),
        series: getSeries(),
        legend: const Legend(isVisible: true),
        axes: const <ChartAxis>[
          NumericAxis(
              name: "Sensor 1",
              title: AxisTitle(text: "Sensor 1"),
              opposedPosition: true)
        ]);

    return GestureDetector(
      child: Container(
        width: 400,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  _enableFullscreen(!isFullscreen, chartWidget);
                },
                icon: const Icon(Icons.fullscreen),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            chartWidget
          ],
        ),
      ),
    );
  }

  DateTime timestamp_convert(int timestampString) {
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(timestampString * 1000);
    // var newDt = DateFormat.yMMMEd().format(dateTime);
    //var newTime = DateFormat.jm().format(dateTime);
    return dateTime;
  }

  void _enableFullscreen(bool fullscreen, Widget chartWidget) async {
    isFullscreen = fullscreen;
    if (fullscreen) {
      // Force landscape orientation for fullscreen
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return FullScreenViewPage(
          chartWidget: chartWidget,
        );
      }));
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    } else {
      // Force portrait
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      SystemChrome.setPreferredOrientations([]);
    }
  }
}

class FullScreenViewPage extends StatefulWidget {
  const FullScreenViewPage({super.key, required this.chartWidget});

  final Widget chartWidget;

  @override
  State<FullScreenViewPage> createState() => _FullScreenViewPageState();
}

class _FullScreenViewPageState extends State<FullScreenViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.chartWidget,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.fullscreen_exit),
      ),
    );
  }
}
