import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/screen/recomend/recomend_page.dart';

class Routes {
  static const recomend = '/recomend';

  static final pages = [
    _page(recomend, RecomendPage())
  ];

  static GetPage _page(String path, Widget item) => GetPage(
        name: path,
        page: () => item,
        curve: Curves.easeInOut,
        transition: Transition.rightToLeftWithFade,
  );
}