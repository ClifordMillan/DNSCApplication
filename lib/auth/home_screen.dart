
import 'package:flutter/material.dart';
import 'package:flutterproject/nabvar/Profile.dart';
import 'package:flutterproject/nabvar/calendar.dart';
import 'package:flutterproject/nabvar/dashboard.dart';
import 'package:flutterproject/nabvar/game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int index = 0;
  final screens = [
    Dashboard(),
    Calendar(),
    Game(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Color(0xFFf1f5fb),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: Duration(seconds: 1),
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              NavigationDestination(
                icon: Icon(Icons.calendar_month_outlined),
                selectedIcon: Icon(Icons.calendar_month),
                label: 'Calendar',
              ),
              NavigationDestination(
                icon: Icon(Icons.gamepad_outlined),
                  selectedIcon: Icon(Icons.gamepad),
                label: 'Event',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                   selectedIcon: Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
          )));
  }