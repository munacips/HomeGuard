// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SwitchTile extends StatefulWidget {
  const SwitchTile(
      {super.key,
      required this.itemName,
      required this.isOn,
      required this.id});

  final String itemName;
  final bool isOn;
  final String id;

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  Future<void> turnOnDevice(String id) async {
    final url = Uri.parse('http://192.168.56.1:3000/api/devices/$id/toggle-status');
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json;charset=utf-8'},
        body: jsonEncode({'id': id}));
      print(response.body);
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.itemName,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Switch(
                value: widget.isOn,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    turnOnDevice(widget.id);
                    value == !widget.isOn;
                  });
                })
          ],
        ),
      ),
    );
  }
}
