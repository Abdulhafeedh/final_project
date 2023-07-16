import 'package:final_project/core/enums/device_type.dart';
import 'package:flutter/cupertino.dart';

DeviceType getDeviceType(MediaQueryData mediaQueryData){
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }
  if (width >= 950) 
    return DeviceType.Desktop;
  else if (width >= 600)
    return DeviceType.Taplet;
  else return DeviceType.Mobile;
}