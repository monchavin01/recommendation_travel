import 'package:flutter/material.dart';
import 'package:recomander_travel/constants/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../../rotes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                try {
                  Get.offAllNamed(Routes.recomend);
                } catch (e) {
                  print(e);
                }
                
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                ),
                color: AppColors.errorColor,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Get.width / 1.05,
                      height: Get.width / 1.5,
                      color: AppColors.errorColor,
                    )
                  ],
                ),
              ),
            )
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                ),
                color: AppColors.errorColor,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: Get.width / 1.05,
                      height: Get.width / 1.5,
                      color: AppColors.errorColor,
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}