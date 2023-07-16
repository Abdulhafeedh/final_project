import 'package:final_project/core/constants.dart';
import 'package:flutter/material.dart';

import '../../core/utils/size_config.dart';
import 'custome/custome_tab_bar.dart';
import 'custome/custome_tab_bar_view.dart';
import 'pages/balance.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

 
  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
var backGroundColor;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this, initialIndex: 4);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 1,
              vertical: SizeConfig.defaultSize! * 1),
          child: Container(
            height: SizeConfig.screenHeight!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: SizeConfig.defaultSize! * 5,
                  child: Container(
                    width: SizeConfig.screenWidth!,
                    decoration: BoxDecoration(
                      color: youBackGroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: customeTabBar(
                        tabController: tabController,
                        backGroundColor: youBackGroundColor,
                        backGroundSelectedLabelColor:
                            youBackGroundSelectedLabelColor,
                        selectedLabelColor: youSelectedLabelColor,
                        unselectedLabelColor: youUnselectedLabelColor),
                  ),
                ),
                Expanded(
                  child: coustomeTabBarView(
                    tabController: tabController,
                    screen1: BalancePage(),
                    screen2: BalancePage(),
                    screen3: BalancePage(),
                    screen4: BalancePage(),
                    screen5: BalancePage(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


                

/*
TabBar customeTabBar(
        {required TabController tabController,
        backGroundColor,
        unselectedLabelColor,
        selectedLabelColor,
        backGroundSelectedLabelColor}) =>
    TabBar(
        controller: tabController,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.defaultSize! * 1.5,
        ),
        unselectedLabelColor: youUnselectedLabelColor,
        labelColor: youSelectedLabelColor,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize! * 0.5,
            vertical: SizeConfig.defaultSize! * 0.5),
        // indicatorColor: Colors.red,
        // indicatorWeight: 2,
        indicator: BoxDecoration(
          color: youBackGroundSelectedLabelColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1),
            )
          ],
          // border: Border.all(color: Colors.red)
        ),
        tabs: const [
          Tab(
            text: 'فوترة',
          ),
          Tab(
            text: 'جملة',
          ),
          Tab(
            text: 'باقات',
          ),
          Tab(
            text: 'فوري',
          ),
          Tab(
            text: 'رصيد',
          ),
        ]);
*/

