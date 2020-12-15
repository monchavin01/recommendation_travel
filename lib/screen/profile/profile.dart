import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:recomander_travel/constants/colors.dart';
import 'package:recomander_travel/screen/home/home_page.dart';
import 'package:recomander_travel/theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

enum BuyerHistoryTab { all, pending, waitPayment, complete, rejected }

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  BuyerHistoryTab historyTab = BuyerHistoryTab.all;
  TabController _controller;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Trip'),
    Tab(text: 'Save'),
    Tab(text: 'My travel')
  ];

  // key for getOrders
  // Map<String, List<Order>> _groupOrders = {
  //   "all": [],
  //   "pending": [],
  //   "wait_payment": [],
  //   "complete": [],
  //   "rejected": []
  // };

  List<Widget> _widgetOptions = <Widget>[HomePage(), ProfilePage()];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
        length: myTabs.length, vsync: this, initialIndex: historyTab.index);
    historyTab = (Get.arguments as BuyerHistoryTab) ?? BuyerHistoryTab.all;
    getOrders();
  }

  // funrtion for get item
  getOrders() async {
    // _orderList = await OrderService().getOrderList();
    // for (var key in _groupOrders.keys.toList()) {
    //   _groupOrders[key] = _orderList
    //       .where((order) => order.status == key || key == "all")
    //       .toList();
    // }
    // return _orderList;
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                          color: Colors.grey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
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
                            color: themeData.primaryColorDark,
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
                            color: AppColors.secondPrimary),
                        child: Icon(Icons.edit, size: 20, color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            tabBarMenu(),
          ],
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(bottom: 10),
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.add, size: 40),
            elevation: 2,
            backgroundColor: AppColors.secondPrimary,
          ),
        ),
      ],
    );
  }

  Widget tabBarMenu() {
    return Column(
      children: [
        Container(
          height: 36,
          decoration: BoxDecoration(
            color: AppColors.secondPrimary,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                // spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: TabBar(
              indicatorColor: AppColors.primary,
              controller: _controller,
              tabs: myTabs),
        ),
        // TabBarView(
        //   children: [
        //     Container(
        //       padding: EdgeInsets.all(16),
        //         alignment: Alignment.center,
        //         child: Text(
        //           'ไม่มีรายการ',
        //         ),
        //     ),
        //   ]
        // )
      ],
    );
  }
}
