// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/notification_page.dart';
import 'package:flutter_app_1/pages/profile_page.dart';
import 'package:flutter_app_1/pages/service_page.dart';
import 'package:flutter_app_1/pages/settings_page.dart';
import 'package:flutter_app_1/pages/home_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  void navigateBottomBar(int index){
    setState(() {
      selectedPage = index;
    });
  }

  int selectedPage = 0;
  final List pages = [HomePage(),ServicesPage(),NotificationsPage(),Settings(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeGuard"),), //title should be dynamic
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedLabelStyle: TextStyle(fontSize: 12),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        currentIndex: selectedPage,
        onTap: navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.build),label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}