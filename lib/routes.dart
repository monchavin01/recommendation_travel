import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:recomander_travel/screen/home/home.dart';
import 'package:recomander_travel/screen/profile/profile.dart';

class Routes {
  static const home = '';
  static const profile = '';


  static final pages = [
    _page(home, Home()),
    _page(profile, Profile())
  ];

  static GetPage _page(String path, Widget item) => GetPage(
    name: path,
    page: () => item,
  );
}