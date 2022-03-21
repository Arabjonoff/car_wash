import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:car_wash/src/widgets/custom_gird.dart';
import 'package:flutter/material.dart';

class WashingScreen extends StatefulWidget {
  const WashingScreen({Key? key}) : super(key: key);

  @override
  _WashingScreenState createState() {
    return _WashingScreenState();
  }
}

class _WashingScreenState extends State<WashingScreen> {
  int girdCount = 5;
  List<int> data = [1, 2, 2, 11, 1, 1, 1, 1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 70 * w),
        child: ListView.builder(
          itemCount: (data.length + girdCount - 1) ~/ girdCount,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(height: 50*h,),
                Row(
                  children: [
                    Expanded(
                        child: CustomGirdView(
                      way: 'Yolak',
                      image: 'assets/image/malibu.png',
                      onTap: () {},
                      color:'',
                      name: 'Jorj Vashington',
                    ),),
                    SizedBox(width: 30*w,),
                    Expanded(
                      child: CustomGirdView(
                        way: 'Yolak',
                        image: 'assets/image/malibu.png',
                        onTap: () {},
                        color:'',
                        name: 'axax',
                      ),),
                    SizedBox(width: 30*w,),
                    Expanded(
                      child: CustomGirdView(
                        way: 'Yolak',
                        image: 'assets/image/malibu.png',
                        onTap: () {},
                        color:'',
                        name: 'axax',
                      ),),
                    SizedBox(width: 30*w,),
                    Expanded(
                      child: CustomGirdView(
                        way: 'Yolak',
                        image: 'assets/image/malibu.png',
                        onTap: () {},
                        color:'',
                        name: 'axax',
                      ),),
                    SizedBox(width: 30*w,),
                    Expanded(
                      child: CustomGirdView(
                        way: 'Yolak',
                        image: 'assets/image/malibu.png',
                        onTap: () {},
                        color:'',
                        name: 'axax',
                      ),),
                  ],
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
