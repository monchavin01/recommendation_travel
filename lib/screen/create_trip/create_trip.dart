import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:recomander_travel/constants/colors.dart';
import 'package:recomander_travel/models/day_option.dart';
import 'package:recomander_travel/models/plan_model.dart';

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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    child:
                        Icon(Icons.add_a_photo, size: 64, color: Colors.white)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32),
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              width: 140,
              height: 100,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Trip Name',
                  // labelText: 'Name',
                ),
              ),
            )
          ]),
          SizedBox(height: 16),
          addNewDayItem(context),
          SizedBox(height: 16),
          InkWell(
              child: new Text(
                'Add day',
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 16),
              ),
              onTap: () {
                Day newDay = Day(
                name: _newNametController.text,
                time: _newTimeController.text);
                dayOptions.add(newDay);
                _newNametController.text = "";
                _newTimeController.text = "";
                print(dayOptions.length);
                }),
        ],
      )),
    );
  }

  final _newNametController = TextEditingController();
  final _newTimeController = TextEditingController();


  String _selectedDate = 'Tap to select date';

  Future _selectDate(BuildContext context) async {
    final DateTime d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2040),
    );
    if (d != null)
      setState(() {
        _selectedDate = DateFormat.yMMMMd("en_US").format(d);
      });
  }

  Widget datePicker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 55,
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
                left: BorderSide(width: 1.0, color: Colors.black),
                right: BorderSide(width: 1.0, color: Colors.black),
                bottom: BorderSide(width: 1.0, color: Colors.black),
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Text(_selectedDate,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF000000))),
                  onTap: () {
                    _selectDate(context);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  tooltip: 'Tap to open date picker',
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  

  // List<Widget> list = new List<Widget>();

  List dayOptions = ListDay().dayOptions;

  Widget addNewDayItem(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: dayOptions.length,
        itemBuilder: (context, index) {
          return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 4,
          child: Container(
            width: Get.width * 0.85,
            height: 128,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 16),
                ),
                Column(
                  children: [
                    SizedBox(height: 24),
                    Text(
                      'DAY 1',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 64,
                      child: TextFormField(
                        controller: _newTimeController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Time',
                          // labelText: 'Time',
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 32),
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    datePicker(),
                    Container(
                      width: 136,
                      // height: ,
                      child: TextFormField(
                        controller: _newNametController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          // labelText: 'Time',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
        }
        
      ),
    );
  }
}
