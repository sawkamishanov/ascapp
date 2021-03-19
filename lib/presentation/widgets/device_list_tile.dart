/// File: device_list_tile.dart
/// Created by Aleksandr Mishanov
/// 19.03.2021, 01:03:17

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class DeviceListTile extends StatelessWidget {
  final ScanResult result;

  const DeviceListTile({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 28.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('rssi', style: TextStyle(fontSize: 12.0)),
                Text(result.rssi.toString())
              ],
            ),
          ),
          title: Text(
            result.device.name.isEmpty ?
            'Noname' : result.device.name
          ),
          subtitle: Text(
            result.advertisementData.localName
          ),
        ),
        Divider()
      ],
    );
  }
}