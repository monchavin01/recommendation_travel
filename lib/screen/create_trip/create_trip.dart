import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/constants/colors.dart';

class CreateTrip extends StatefulWidget {
  @override
  _CreateTripState createState() => _CreateTripState();
}

class _CreateTripState extends State<CreateTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Trip'),
        backgroundColor: AppColors.primary,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print("add image");
                  },
                  child: Container(
                    width: 140,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: EdgeInsets.only(top: 16),
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.add_a_photo, size: 64, color: Colors.white)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 32),),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  width: 140,
                  height: 100,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Trip Name',
                      // labelText: 'Name',
                    ),
                  ),
                )
              ]
            ),
            SizedBox(height: 10),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              ),
              elevation: 4,
              child: Container(
                width: Get.width *0.85,
                height: 128,
                child: Row(
                  children: [
                    SizedBox(height: 16),
                    Padding(padding: EdgeInsets.only(right: 16),),
                    Column(
                      children: [
                        Text('DAY 1', style: TextStyle(fontSize: 20),),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          width: 64 ,
                          // height: ,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: 'Time',
                              // labelText: 'Time',
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 32),),
                    Column(children: [
                      Text('DAY w'),
                    ],)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              child: new Text('Add day', style: TextStyle(decoration: TextDecoration.underline),),
              onTap: () {
              }
          ),
          ],
        )
      ),
    );
  }
}
