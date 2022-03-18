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
      width: 300 * w,
      height: 350 * h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.yellow,
      ),
      child: Column(
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
            child: Image.asset('assets/images/malibu.png'),
          ),
          SizedBox(height: 20*h,),
          Container(
            width: 150*w,
            height: 30*h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/add.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
