import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNavBarController extends GetxController {
  int currentIndex = 0;

  void updateCurrentIndex(int curr) {
    currentIndex = curr;
    update();
  }
}