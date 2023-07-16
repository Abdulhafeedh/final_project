import 'package:final_project/screens/tabBar/tabBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return TabBarScreen();
  //    return Scaffold(
  //      body: Stack(
  //        children: [
  //         Container(
  //         color: Color.fromARGB(255, 203, 4, 74),
  //         width: double.infinity,//MediaQuery.of(context).size.width / 2,
  //         height:SizeConfig.defaultSize! * 5,// MediaQuery.of(context).size.height / 2,
  //        ),
  //        Container(
  //             color:Color.fromARGB(255, 17, 78, 35),
  //             width: SizeConfig.defaultSize! * 10,//deviceInfo.localWidth / 2,
  //             height: SizeConfig.defaultSize! * 10,//.localHeight ,
  //             // child: Container(
  //             //   color: Colors.blue,
  //             //   width: deviceInfo.localWidth - 55,
  //             //   height: deviceInfo.localHeight -55,
  //             // ),
  //        ),
  //        ]
  //      ),
  //    );
  //
  // 
  }
}
