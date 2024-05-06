// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_1/components/SwitchTile.dart';

class DeviceManagementPage extends StatefulWidget {
  const DeviceManagementPage({super.key});

  @override
  State<DeviceManagementPage> createState() => _DeviceManagementPageState();
}

class _DeviceManagementPageState extends State<DeviceManagementPage> {
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Device Management"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    "Disarm",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                    onPressed: onPressed,
                    child: Text(
                      "LockDown",
                      style: TextStyle(fontSize: 25),
                    ))
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Security Camera"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Motion sensors"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Door sensors"),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Window sensors"),
                ),
                SwitchTile(itemName: "Smart locks")
              ],
            )
          ],
        ));
  }
}
