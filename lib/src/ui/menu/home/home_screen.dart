import 'dart:async';

import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _timeHour =
          "${Utils.numberFormat(DateTime.now().hour)} : ${Utils.numberFormat(DateTime.now().minute)} : ${Utils.numberFormat(DateTime.now().second)}",
      _timerDate =
          "${Utils.numberFormat(DateTime.now().day)}.${Utils.numberFormat(DateTime.now().month)}.${Utils.numberFormat(DateTime.now().year)}";
  double lat = 55.0111;
  double lon = 15.0569;
  String key = 'd3ea0ebe47e6ee5a55b91130c56ddc8c';
  String cityName = 'Uzbkeistan Andijan';
  WeatherFactory wf = WeatherFactory('d3ea0ebe47e6ee5a55b91130c56ddc8c');

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 70 * w,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Bosh sahifa',
                  style:
                      TextStyle(fontSize: 36 * h, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(width: 200 * w),
              Expanded(
                flex: 3,
                child: Container(
                  height: 80 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.06),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30 * w,
                      ),
                      SvgPicture.asset('assets/icons/clock.svg'),
                      SizedBox(
                        width: 10 * w,
                      ),
                      Text(
                        _timeHour,
                        style: TextStyle(
                          fontSize: 24 * w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 30 * w,
                      ),
                      SvgPicture.asset('assets/icons/calendar.svg'),
                      SizedBox(
                        width: 10 * w,
                      ),
                      Text(
                        _timerDate,
                        style: TextStyle(
                          fontSize: 24 * w,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 156 * w),
            ],
          ),
          SizedBox(
            height: 62 * h,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 70 * w,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.blue,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                  offset: Offset(15, 20),
                                  blurRadius: 10)
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 44 * h),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/icons/money_recive.svg',
                                  width: 120 * w,
                                ),
                              ),
                              SizedBox(height: 32 * h),
                              Text(
                                'Kirim',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                              Text(
                                '+10 560 000 UZS',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100 * h),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.blue,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                  offset: Offset(15, 20),
                                  blurRadius: 10),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 44 * h),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/icons/car3.svg',
                                  width: 120 * w,
                                ),
                              ),
                              SizedBox(height: 32 * h),
                              Text(
                                'Navbat',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                              Text(
                                '3 ta',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100 * w),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.yellow,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                  offset: Offset(15, 20),
                                  blurRadius: 10)
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 44 * h),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/icons/money_send.svg',
                                  width: 120 * w,
                                ),
                              ),
                              SizedBox(height: 32 * h),
                              Text(
                                'Chiqim',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                              Text(
                                '-460 000 UZS',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100 * h),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.yellow,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                  offset: Offset(15, 20),
                                  blurRadius: 10)
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 44 * h),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/icons/car4.svg',
                                  width: 120 * w,
                                ),
                              ),
                              SizedBox(height: 32 * h),
                              Text(
                                'Yuvilmoqda',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                              Text(
                                '10 ta',
                                style: TextStyle(
                                    fontSize: 36 * h,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100 * w),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF47BFDF),
                          Color(0xFF4A91FF),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 50 * w, vertical: 50 * h),
                          child: Row(
                            children: [
                              Text(
                                'Bugun',
                                style: TextStyle(
                                    fontSize: 36 * w, color: AppColor.white),
                              ),
                              const Spacer(),
                              Text(
                                DateFormat('dd').format(DateTime.now()) +
                                    '-yanvar',
                                style: TextStyle(
                                    fontSize: 36 * w, color: AppColor.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 155*h,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 156 * w),
              ],
            ),
          ),
          SizedBox(
            height: 92 * h,
          ),
        ],
      ),
    );
  }

  void _getCurrentTime() {
    setState(() {
      _timeHour =
          "${Utils.numberFormat(DateTime.now().hour)} : ${Utils.numberFormat(DateTime.now().minute)} : ${Utils.numberFormat(DateTime.now().second)}";
      _timerDate =
          "${Utils.numberFormat(DateTime.now().day)}.${Utils.numberFormat(DateTime.now().month)}.${Utils.numberFormat(DateTime.now().year)}";
    });
  }
}
