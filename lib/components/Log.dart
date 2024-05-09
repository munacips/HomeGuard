// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({super.key,required this.device, required this.description});

  final String device;
  final String description;

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(widget.device,style: const TextStyle(fontSize: 20, color: Colors.red),),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(widget.description),
            )
          ],
        ),
      ),
    );
  }
}