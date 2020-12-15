import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // AppImages.bgTheCollector,
          width: Get.width,
          height: Get.height * 0.25,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            boxShadow: [BoxShadow(blurRadius: 2.0)],
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(19.0)),
          ),
          // fit: BoxFit.cover,
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 65),
                padding: EdgeInsets.symmetric(horizontal: 118),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.grey),
                        child: Icon(Icons.account_circle,
                            size: 125.0, color: Colors.white)),
                  ],
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: Get.width * 0.75),
                    child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text(
                        "Firstname  Lastname",
                        // fullName
                        // key: Key('username-info'),
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: Get.width * 0.055,
                            fontWeight: FontWeight.w400),
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12),
                    margin: EdgeInsets.only(left: 4),
                    child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColors.primary),
                          child: Icon(Icons.edit, size: 20, color: Colors.white)
                      ),
                    
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
