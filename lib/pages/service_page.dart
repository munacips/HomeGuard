import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/device_management.dart';
import 'package:flutter_app_1/pages/emergency.dart';
import 'package:flutter_app_1/pages/eventlogs.dart';
import 'package:flutter_app_1/pages/guestaccess.dart';
import 'package:flutter_app_1/pages/livefeed.dart';
import 'package:flutter_app_1/pages/login_page.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LiveFeedPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.live_tv_rounded,color: Colors.red,size: 150,),
                Text("Live Feed",style: TextStyle(fontSize: 20),)
              ],
            )
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EventLogsPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child:Column(
              children: [
                Icon(Icons.newspaper,color: Colors.red,size: 150,),
                Text("Logs",style: TextStyle(fontSize: 20),)
              ],
            )
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EmergencyPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children : [
              Icon(Icons.warning_amber,color: Colors.red,size: 150,),
              Text("Emergency",style: TextStyle(fontSize: 20),)
            ],
            )
          ),
        ),
        GestureDetector(
          onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const DeviceManagementPage()));},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.settings_outlined,color: Colors.red,size: 150,),
                Text("Device Management",style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const GuestAccessPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.people,color: Colors.red,size: 150,),
                Text("Guest Access",style: TextStyle(fontSize: 20),)
              ],
            )
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.logout,color: Colors.red,size: 150,),
                Text("Logout",style: TextStyle(fontSize: 20),)
              ],
            )
          ),
        ),
      ],);
  }
}