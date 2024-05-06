import 'package:flutter/material.dart';
import 'package:flutter_app_1/components/SwitchTile.dart';

class GuestAccessPage extends StatefulWidget {
  const GuestAccessPage({super.key});

  @override
  State<GuestAccessPage> createState() => _GuestAccessPageState();
}

class _GuestAccessPageState extends State<GuestAccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Guest Access")),
      body: const Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("These settings only work for 2 hours",style: TextStyle(color: Colors.red,fontSize: 20),),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Security Camera"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Motion sensors"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Door sensors"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: SwitchTile(itemName: "Window sensors"),
                ),
                SwitchTile(itemName: "Smart locks")
              ],
            ),
    );
  }
}