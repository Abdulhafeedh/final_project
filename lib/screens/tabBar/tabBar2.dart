import 'package:final_project/core/constants.dart';
import 'package:flutter/material.dart';

import 'pages/balance.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen(
      [this.backGroundColor,
      this.unselectedLabelColor,
      this.selectedLabelColor,
      this.backGroundSelectedLabelColor]);
  final Color? backGroundColor;
  final Color? unselectedLabelColor;
  final Color? selectedLabelColor;
  final Color? backGroundSelectedLabelColor;
  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  var backGroundColor;
  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                  child: Container(
                    width: double.infinity,
                    child: TabBar(
                      physics: const ClampingScrollPhysics(),
                        controller: tabController,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: youUnselectedLabelColor,
                        labelColor: youSelectedLabelColor,
                        // indicatorColor: Colors.red,
                        // indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: youBackGroundSelectedLabelColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.red)
                        ),
                        labelPadding: EdgeInsets.symmetric(horizontal: 5),
                        tabs: [
                          Tab(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.red)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('فوري'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.red)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('فوري'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.red)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('فوري'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.red)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('فوري'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.red)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('رصيد'),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                    child: TabBarView(controller: tabController, children: [
                  BalancePage(),
                  BalancePage(),
                  BalancePage(),
                  BalancePage(),
                  BalancePage(),
                ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
