import 'package:final_project/core/functions/get_device_type.dart';
import 'package:final_project/core/models/device_info.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function (BuildContext context, DeviceInfo deviceInfo) builder; 
  const InfoWidget({Key? key, required this.builder}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation, 
          deviceType: getDeviceType(mediaQueryData), 
          screenWidth: mediaQueryData.size.width, 
          screenHeight: mediaQueryData.size.height, 
          localWidth: constraints.maxWidth, 
          localHeight: constraints.maxHeight);
        return builder(context, deviceInfo);
      },
    );
  }
}