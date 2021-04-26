import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/palette.dart';
import 'daily_ screen.dart';
import 'home_page.dart';
import 'hourly_ screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    HourlyScreen(),
    DailyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: _screens
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList()),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: "Hourly",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day_outlined),
            activeIcon: Icon(Icons.calendar_view_day),
            label: "Daily",
          ),
         
        ],
      ),
    );
  }
}
