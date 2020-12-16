import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/rotes.dart';

import 'main_screen.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
      getPages: Routes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
  
}