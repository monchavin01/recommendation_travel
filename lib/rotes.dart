import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/main_screen.dart';
import 'package:recomander_travel/screen/create_trip/create_trip.dart';
import 'package:recomander_travel/screen/recomend/recomend_page.dart';

class Routes {
  static const rooted = '/';
  static const recomend = '/recomend';
  static const createTrip = '/createTrip';

  static final pages = [
    _page(rooted, MainScreen()),
    _page(recomend, RecomendPage()),
    _page(createTrip, CreateTrip()),
  ];

  static GetPage _page(String path, Widget item) => GetPage(
        name: path,
        page: () => item,
        curve: Curves.easeInOut,
        transition: Transition.rightToLeftWithFade,
  );
}