import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';

SizedBox customeTabBar(
        {required TabController tabController,
        backGroundColor,
        unselectedLabelColor,
        selectedLabelColor,
        backGroundSelectedLabelColor}) =>
    SizedBox(
      height: SizeConfig.defaultSize! * 5,
      child: Container(
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TabBar(
            controller: tabController,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize! * 1.5,
            ),
            unselectedLabelColor: unselectedLabelColor,
            labelColor: selectedLabelColor,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize! * 0.5,
                vertical: SizeConfig.defaultSize! * 0.5),
            // indicatorColor: Colors.red,
            // indicatorWeight: 2,
            indicator: BoxDecoration(
              color: backGroundSelectedLabelColor,
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
            ]),
      ),
    );
