import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/ui/menu/home/home_screen.dart';
import 'package:car_wash/src/ui/menu/main_screen.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return landscapeMode(h, w);
          } else {
            return portraitMode(h, w, context);
          }
        },
      ),
    );
  }

  landscapeMode(double h, double w) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 96 * w, vertical: 120 * h),
      decoration: const BoxDecoration(
        color: AppColor.blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Kirish',
            style: TextStyle(
              fontSize: 72 * h,
              color: AppColor.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Tizimga kirish uchun login va parolingizni kiriting',
            style: TextStyle(
              fontSize: 18 * h,
              color: AppColor.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 120 * h,
          ),
          Container(
            padding: EdgeInsets.only(left: 40 * w),
            width: double.infinity,
            height: 62 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              decoration: const InputDecoration(
                  hintText: 'User name', border: InputBorder.none),
              style: TextStyle(
                fontSize: 24 * h,
              ),
            ),
          ),
          SizedBox(
            height: 40 * h,
          ),
          Container(
            padding: EdgeInsets.only(left: 40 * w),
            width: double.infinity,
            height: 62 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              decoration: const InputDecoration(
                  hintText: 'Parol', border: InputBorder.none),
              style: TextStyle(
                fontSize: 24 * h,
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 140 * w),
              height: 70 * h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.white,
              ),
              alignment: Alignment.center,
              child: Text(
                'Kirish',
                style: TextStyle(color: AppColor.blue, fontSize: 30 * h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  portraitMode(double h, double w, BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/image/login.png',
            width: (MediaQuery.of(context).size.width - 304 * w) / 2,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(width: 204 * w),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 100 * h),
            padding: EdgeInsets.symmetric(horizontal: 70 * w, vertical: 56 * h),
            decoration: BoxDecoration(
              color: AppColor.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Kirish',
                  style: TextStyle(
                    fontSize: 72 * h,
                    color: AppColor.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Tizimga kirish uchun login va parolingizni kiriting',
                  style: TextStyle(
                    fontSize: 18 * h,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 120 * h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 40 * w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.white,
                  ),
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    scrollPadding: EdgeInsets.zero,
                    decoration: const InputDecoration(
                      hintText: 'User name',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 24 * h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40 * h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 40 * w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.white,
                  ),
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: 'Parol', border: InputBorder.none),
                    style: TextStyle(
                      fontSize: 24 * h,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MainScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 140 * w),
                    height: 70 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.white,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Kirish',
                      style: TextStyle(color: AppColor.blue, fontSize: 30 * h),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 100 * w),
      ],
    );
  }
}
