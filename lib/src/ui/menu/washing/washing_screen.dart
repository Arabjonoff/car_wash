import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';

class WashingScreen extends StatefulWidget {
  const WashingScreen({Key? key}) : super(key: key);

  @override
  _WashingScreenState createState(){
    return _WashingScreenState();
  }
}

class _WashingScreenState extends State<WashingScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 70*w),
      ),
    );
  }
}
