import 'package:flutter/material.dart';
import 'package:recomander_travel/services/route_service.dart';
import 'package:get/get.dart';

class NavigationBarItem extends StatelessWidget {
  final int currentIndex;

  const NavigationBarItem({Key key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile")
        ),
      ],
      backgroundColor: Colors.grey,
      onTap: (value) {
        Get.find<RouteService>().changePage(value);
      },
    );
  }
}