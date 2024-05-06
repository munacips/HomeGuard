import 'package:flutter/material.dart';

class SwitchTile extends StatefulWidget {
  const SwitchTile({super.key,required this.itemName});

  final String itemName;

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {

  bool item = false;

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
                        Switch(value: item,activeColor: Colors.blue, onChanged: (value){setState(() {
                          item = value;
                        });})
                      ],
                    ),
                  ),
                );
  }
}