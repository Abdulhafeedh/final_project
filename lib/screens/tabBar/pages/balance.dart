import 'dart:html';

import 'package:final_project/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ExpansionTile(
          
          collapsedBackgroundColor: Colors.yellow,
          backgroundColor: Colors.green,
          childrenPadding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 1,
              vertical: SizeConfig.defaultSize! * 1),
          title: Text(
            'title', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          // leading: Icon(Icons.mail),
          trailing: Icon(Icons.person),
          controlAffinity: ListTileControlAffinity.leading,
          

          children: [
            Container(
              width: SizeConfig.screenWidth,
              // height: SizeConfig.defaultSize! * 7,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1412',
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 2.5,
                    ),
                  ),
                  Text(
                    '1412',
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 2,
                    ),
                  ),
                  Text(
                    '1412',
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.5,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 0.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.email),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                        ),
                        Icon(Icons.email),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                        ),
                        Icon(Icons.email),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            
          ],
          // onExpansionChanged: (bool expanded) {
          //   setState(() => _customIcon = expanded);
          // },
          // controlAffinity: ListTileControlAffinity.leading, // icon
        ),
        Container(
          height: 500,
          color: Colors.red,
        )
      ],
    ));
  }
}
