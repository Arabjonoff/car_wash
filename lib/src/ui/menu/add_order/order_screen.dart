import 'dart:async';

import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  String _timeHour =
          "${Utils.numberFormat(DateTime.now().hour)} : ${Utils.numberFormat(DateTime.now().minute)} : ${Utils.numberFormat(DateTime.now().second)}",
      _timerDate =
          "${Utils.numberFormat(DateTime.now().day)}.${Utils.numberFormat(DateTime.now().month)}.${Utils.numberFormat(DateTime.now().year)}";
  String dropdownvalue = 'Markani tanlang';

  // List of items in our dropdown menu
  var items = [
    'Markani tanlang',
    'Chevrolet',
    'Audi',
    'BMW',
    'Mers',
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
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
                  'Buyurtma olish',
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
          Container(
            padding: EdgeInsets.only(top: 70 * h),
            width: 1630 * w,
            height: 818 * h,
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                offset: Offset(15, 20),
                blurRadius: 13,
              ),
            ], borderRadius: BorderRadius.circular(10), color: AppColor.white),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Mashina',
                        style: TextStyle(
                          fontSize: 36 * h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 44 * h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30 * w),
                        width: 450 * w,
                        height: 70 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        child: DropdownButton(
                          underline: SizedBox.shrink(),
                          focusColor: Colors.transparent,
                          value: dropdownvalue,
                          isExpanded: true,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30 * w),
                        width: 450 * w,
                        height: 70 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        child: DropdownButton(
                          underline: SizedBox.shrink(),
                          focusColor: Colors.transparent,
                          value: dropdownvalue,
                          isExpanded: true,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30 * w),
                        width: 450 * w,
                        height: 70 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        child: DropdownButton(
                          underline: SizedBox.shrink(),
                          focusColor: Colors.transparent,
                          value: dropdownvalue,
                          isExpanded: true,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        width: 450 * w,
                        height: 70 * h,
                        padding: EdgeInsets.only(left: 30 * w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Davlat raqami',
                            labelStyle: TextStyle(
                              color: AppColor.grey.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        width: 450 * w,
                        height: 70 * h,
                        padding: EdgeInsets.only(left: 30 * w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Telfon raqami',
                            prefixText: '(+998)',
                            labelStyle: TextStyle(
                              color: AppColor.grey.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30 * w),
                        width: 450 * w,
                        height: 100 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Izoh',
                            labelStyle: TextStyle(
                              color: AppColor.grey.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30 * h,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Xizmatlar',
                        style: TextStyle(
                          fontSize: 36 * h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 41 * h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30 * w),
                        width: 450 * w,
                        height: 70 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                       child: DropdownButton(
                          underline: SizedBox.shrink(),
                          focusColor: Colors.transparent,
                          value: dropdownvalue,
                          isExpanded: true,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Ma’lumotlar',
                        style: TextStyle(
                          fontSize: 36 * h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 41 * h,
                      ),
                      Container(
                        width: 450 * w,
                        height: 602 * h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Center(
                                child: Image.asset('assets/image/malibu.png'),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 41 * w),
                              width: 368 * w,
                              height: 158 * h,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10 * h),
                                  height: 32 * h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColor.black,
                                        style: BorderStyle.solid),
                                  ),
                                  child: Text(
                                    '60 A 123 NN',
                                    style: TextStyle(
                                        fontSize: 24 * h,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 30 * w,
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10 * h),
                                  height: 32 * h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: AppColor.blue),
                                  ),
                                  child: Text('+998 33 101 17 47'),
                                ),
                              ],
                            ),
                            Text('Yuvish turi:')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
