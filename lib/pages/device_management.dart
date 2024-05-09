// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_app_1/components/SwitchTile.dart';
import 'package:flutter_app_1/globals/globals.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String str = 'on';

class Device {
  final String name;
  final bool status;
  final bool isOn;
  final String id;

  Device(
      {required this.name,
      required this.status,
      required this.id,
      required this.isOn});
  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
        name: json['name'],
        status: json['status'],
        isOn: json['isOn'] == 'on',
        id:json['_id'],
      );
  }
}

class DeviceManagementPage extends StatefulWidget {
  const DeviceManagementPage({super.key});

  @override
  State<DeviceManagementPage> createState() => _DeviceManagementPageState();
}

class _DeviceManagementPageState extends State<DeviceManagementPage> {
  void Function()? onPressed;
  List<Device> _devices = [];
  @override
  void initState() {
    super.initState();
    _fetchDevices();
  }

  Future<void> _fetchDevices() async {
    final response =
        await http.get(Uri.parse('http://$databaseIp:3000/api/devices'));
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      setState(() {
        _devices = json.map((item) => Device.fromJson(item)).toList();
      });
    } else {
      throw Exception("Failed to load Devices");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Device Management"),
      ),
      body: ListView.builder(
        itemCount: _devices.length,
        itemBuilder: (BuildContext context, int index){
          return SwitchTile(itemName: _devices[index].name, isOn: _devices[index].isOn,id: _devices[index].id,);
        }),
      );
  }
}