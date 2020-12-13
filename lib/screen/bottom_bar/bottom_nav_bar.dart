import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:recomander_travel/screen/bottom_bar/bottom_nav_bar_controller.dart';

import 'navigation_bar_item.dart';

class BottomNavigationBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavigationBar({Key key, this.currentIndex}) : super(key: key);

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      init: BottomNavBarController(),
      builder: (value) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: NavigationBarItem(
            currentIndex: value.currentIndex,
          ),
        );
      });
  }
}