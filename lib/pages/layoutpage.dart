import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/notification_page.dart';
import 'package:flutter_app_1/pages/service_page.dart';

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
  final List pages = [const ServicesPage(),const NotificationsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomeGuard"),), //title should be dynamic
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPage,
        onTap: navigateBottomBar,
        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.build),label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
        ],
      ),
    );
  }
}