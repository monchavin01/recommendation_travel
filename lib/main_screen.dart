import 'package:flutter/material.dart';
import 'package:recomander_travel/constants/colors.dart';
import 'package:recomander_travel/screen/profile/profile.dart';

import 'screen/home/home_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProfilePage()
  ];

   void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Trips'), backgroundColor: AppColors.primary),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
        elevation: 4.0,
      ),
    );
  }
}