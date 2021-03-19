import 'package:ascapp/presentation/widgets/device_list_tile.dart';
/// File: devices_view.dart
/// Created by Aleksandr Mishanov
/// 18.03.2021, 22:47:58

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class DevicesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ASCAPP Demo')
      ),
      body: StreamBuilder<List<ScanResult>>(
        initialData: [],
        stream: FlutterBlue.instance.scanResults,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.map((device) {
                  return DeviceListTile(result: device);
                }).toList(),
            );
          }
          return Center(child: Text('No devices'));
        },
      ),
      floatingActionButton: StreamBuilder<bool>(
        initialData: false,
        stream: FlutterBlue.instance.isScanning,
        builder: (context, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              child: Icon(Icons.stop),
              onPressed: () => FlutterBlue.instance.stopScan()
            );
          } else {
            return FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () => FlutterBlue.instance.startScan(
                timeout: Duration(seconds: 5)
              )
            );
          }
        },
      ),
    );
  }
}