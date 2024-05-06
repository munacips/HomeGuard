import 'package:flutter/material.dart';

class LiveFeedPage extends StatefulWidget {
  const LiveFeedPage({super.key});

  @override
  State<LiveFeedPage> createState() => _LiveFeedPageState();
}

class _LiveFeedPageState extends State<LiveFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Feed"),
      ),
      body: const Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Frontyard",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Expanded(child: Placeholder(color: Colors.blue,)),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Backyard",style: TextStyle(fontSize: 20),),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Expanded(child: Placeholder(color: Colors.blue,)),
              )
            ],
          )
        ],
      ),
    );
  }
}
