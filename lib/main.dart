import 'package:flutter/material.dart';
import 'package:mulitaxischart/chart.dart';

import 'models/sensor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, List<SensorData>> sensorDataList = {};
  List<SensorData> sensordata = [];
  List<SensorData> sensordataone = [];

  @override
  void initState() {
    super.initState();
    for (var element in Sensordata_List) {
      sensordata.add(SensorData.fromJson(element));
    }
    for (var element in Sensordata_List_two) {
      sensordataone.add(SensorData.fromJson(element));
    }

    sensorDataList['Sensor 1'] = sensordata;
    sensorDataList['Sensor 2'] = sensordataone;

    print(sensorDataList["Sensor 1"]);
  }

  Widget loadtab() {
    return ChartPage(chartType: "line chart", modalityData: sensorDataList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(child: loadtab()),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
