/// File: main_page.dart
/// Created by Aleksandr Mishanov
/// 18.03.2021, 22:47:44

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'bluetooth_off_view.dart';
import 'devices_view.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BluetoothState>(
      stream: FlutterBlue.instance.state,
      initialData: BluetoothState.unknown,
      builder: (context, snapshot) {
        final state = snapshot.data;
        if (state == BluetoothState.on) {
          return DevicesView();
        }
        return BluetoothOffView();
      }
    );
  }
}