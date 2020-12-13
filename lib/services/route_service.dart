import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:recomander_travel/screen/bottom_bar/bottom_nav_bar_controller.dart';

import '../routes.dart';

class RouteService extends GetxService {
  final BottomNavBarController bottomNavBarController = Get.find<BottomNavBarController>();

  static const List<Map<String, dynamic>> routes = [
    {'path' : Routes.home, 'index': 0},
    {'path' : Routes.profile, 'index': 1}
  ];

  Future<void> changePage(int bottomBarTappedIndex) async {
    // final _userInfo = await __userService.getUserStorage();
    String currentRoute = routes.firstWhere((route) => route['index'] == bottomBarTappedIndex)['path'];
    switch (currentRoute) {
      case Routes.profile: Routes.profile;
        // try {
        //   currentRoute = _userInfo == null ? Routes.login : Routes.profile;
        // } catch (e) {
        //   currentRoute = Routes.login;
        // }
     
    }
  }
}