import 'package:battery/battery.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

  var b = Battery();
  final result = await b.batteryLevel;

  final deviceInfo = await DeviceInfoPlugin().androidInfo;
  debugPrint(deviceInfo.display);
  debugPrint(deviceInfo.brand);
  debugPrint(deviceInfo.product);

  debugPrint('battery: $result');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      body: Center(
        child: Text('Device Info'),
      ),
    );
  }
}

