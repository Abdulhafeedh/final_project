import 'package:flutter/material.dart';

TabBarView coustomeTabBarView(
        {required TabController tabController,
        Widget? screen1,
        Widget? screen2,
        Widget? screen3,
        Widget? screen4,
        Widget? screen5,
        Widget? screen6}) =>
    TabBarView(
      controller: tabController,
      children: [
        screen1!,
        screen2!,
        screen3!,
        screen4!,
        screen5!,
      ],
    );
