/// File: bluetooth_off_view.dart
/// Created by Aleksandr Mishanov
/// 18.03.2021, 22:48:22

import 'package:flutter/material.dart';

class BluetoothOffView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.bluetooth_disabled,
                size: 128.0,
              ),
              radius: 100.0
            ),
            Text(
              'Bluetooth off', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0
              )
            )
          ],
        ),
      ),
    );
  }
}