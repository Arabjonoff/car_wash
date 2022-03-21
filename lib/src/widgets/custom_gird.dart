import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomGirdView extends StatefulWidget {
  final String way, image, name, color;
  final Function onTap;

  const CustomGirdView({
    Key? key,
    required this.way,
    required this.image,
    required this.name,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomGirdView> createState() => _CustomGirdViewState();
}

class _CustomGirdViewState extends State<CustomGirdView> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.yellow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20 * h,
          ),
          Text(
            widget.way,
            style: TextStyle(
              fontSize: 24 * h,
              color: AppColor.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 25*h,),
          Center(
            child: Image.asset(widget.image),
          ),
          SizedBox(height: 20*h,),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 38*w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/user_tag.svg'),
                  SizedBox(width: 10*w,),
                  Text(widget.name,style: TextStyle(color: AppColor.white,fontSize: 24*h,),)
                ],
              ),
            ),
          ),
          SizedBox(height: 24*h,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 75*w),
            padding: EdgeInsets.symmetric(horizontal: 40*h,vertical: 6*h),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/like.svg'),
                SizedBox(width: 7*w,),
                Text('Tayyor',style: TextStyle(fontSize: 14*h,),),
              ],
            ),
          ),
          SizedBox(height: 15*h,),
        ],
      ),
    );
  }
}
