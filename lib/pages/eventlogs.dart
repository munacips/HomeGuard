import 'package:flutter/material.dart';
import 'package:flutter_app_1/components/Log.dart';
import 'package:flutter_app_1/globals/globals.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LogItem {
  final String deviceName;
  final String message;
  final DateTime timestamp;
  final String type;

  LogItem(
      {required this.deviceName,
      required this.message,
      required this.timestamp,
      required this.type});
  factory LogItem.fromJson(Map<String, dynamic> json) {
    return LogItem(
        deviceName: json['deviceName'],
        message: json['message'],
        timestamp: DateTime.parse(json['timestamp']),
        type: json['type']);
  }
}

class EventLogsPage extends StatefulWidget {
  const EventLogsPage({super.key});

  @override
  State<EventLogsPage> createState() => _EventLogsPageState();
}

class _EventLogsPageState extends State<EventLogsPage> {
  List<LogItem> _logs = [];
  @override
  void initState() {
    super.initState();
    _fetchlogs();
  }

  Future<void> _fetchlogs() async {
    final response = await http
        .get(Uri.parse('http://$databaseIp:3000/api/notifications/'));
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      setState(() {
        _logs = json.map((item) => LogItem.fromJson(item)).toList();
      });
    } else {
      throw Exception("Failed to load Logs");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logs"),),
      body: ListView.builder(
        itemCount: _logs.length,
        itemBuilder: (BuildContext context, int index) {
        return Log(
          device: _logs[index].deviceName,
          description: _logs[index].message,
        );
      }),
    );
  }
}
