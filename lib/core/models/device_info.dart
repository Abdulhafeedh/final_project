import 'package:final_project/core/enums/device_type.dart';
import 'package:flutter/material.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;

  DeviceInfo({required this.orientation, required this.deviceType, required this.screenWidth, required this.screenHeight, required this.localWidth, required this.localHeight});
  
}