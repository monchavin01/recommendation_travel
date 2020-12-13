import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../routes.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return _buildGetMaterialApp(Routes.home);
  }

  GetMaterialApp _buildGetMaterialApp(String rootPath) {
    return GetMaterialApp(
      transitionDuration: Duration(milliseconds: 200),
      builder: (context, child) {
        return Scaffold(
            body: child, bottomNavigationBar: BottomNavigationBar(),
          );
      },
      initialRoute: rootPath,
      getPages: Routes.pages,
      debugShowCheckedModeBanner: false,
    );
  }

}
