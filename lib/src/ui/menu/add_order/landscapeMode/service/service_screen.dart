import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}
bool on31 = false;
bool _container = false;
class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.background,
      body: ListView(
        children: [
          SizedBox(height: 50*h,),
          GestureDetector(
            onTap: (){
             setState(() {
               on31 = !on31;
               _container = !_container;
             });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30*w),
              margin: EdgeInsets.symmetric(horizontal: 50*w),
              width: MediaQuery.of(context).size.width,
              height: 70*h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: AppColor.blue,),
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Row(
                children: [
                  Text(
                    'Yuvish turi',
                    style: TextStyle(fontSize: 24 * h),
                  ),
                  const Spacer(),
                  on31
                      ? Icon(Icons.keyboard_arrow_up)
                      : Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
          SizedBox(height: 30*h,),
          _container?Container(
            margin: EdgeInsets.symmetric(horizontal: 50*w),
            width: MediaQuery.of(context).size.width,
            height: 500*h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.blue,),
            ),
          ):Container(),
        ],
      ),
    );
  }
}
