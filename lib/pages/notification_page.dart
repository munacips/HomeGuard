import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Notification {
  final String deviceName;
  final String message;
  final DateTime timestamp;
  final String type;

  Notification(
      {required this.deviceName,
      required this.message,
      required this.timestamp,
      required this.type});
  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
        deviceName: json['deviceName'],
        message: json['message'],
        timestamp: DateTime.parse(json['timestamp']),
        type: json['type']);
  }
}

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<Notification> _notifications = [];
  @override
  void initState() {
    super.initState();
    _fetchNotifications();
  }

  Future<void> _fetchNotifications() async {
    final response = await http
        .get(Uri.parse('http://192.168.213.8:3000/api/notifications/'));
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      setState(() {
        _notifications =
            json.map((item) => Notification.fromJson(item)).toList();
      });
    } else {
      throw Exception("Failed to load Notifications");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_notifications[index].deviceName),
            subtitle: Text("${_notifications[index].message} ${_notifications[index].timestamp}"),
          );
        });
  }
}
