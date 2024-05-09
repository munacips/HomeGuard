import 'package:flutter/material.dart';

class EmergencyPage extends StatefulWidget {
  const EmergencyPage({super.key});

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Emergency Page"),),
      body: GestureDetector(
        onTap: () {
          setState(() {
            showDialog(context: context, builder: (BuildContext context){
              return const AlertDialog(content: Text("Message sent to helpers"),);
            });
          });
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.red, border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Emergency",style: TextStyle(color: Colors.black, fontSize: 50),),
            ),
          ),
        ),
      ),
    );
  }
}