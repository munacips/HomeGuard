import 'package:flutter/material.dart';
import 'package:flutter_app_1/components/Log.dart';

class EventLogsPage extends StatefulWidget {
  const EventLogsPage({super.key});

  @override
  State<EventLogsPage> createState() => _EventLogsPageState();
}

class _EventLogsPageState extends State<EventLogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Event Logs"),),
      body: const Column(
      children: [
        Log(device: "Camera", description: "The camera was turned on last night at 23:45"),
        Log(device: "Motion sensor", description: "The motion sensor detected somethins at 23:44")
      ],
    ),
    );
  }
}