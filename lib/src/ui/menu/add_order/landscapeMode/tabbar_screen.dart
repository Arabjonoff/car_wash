import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/ui/menu/add_order/landscapeMode/addCar/add_car_screen.dart';
import 'package:car_wash/src/ui/menu/add_order/landscapeMode/service/service_screen.dart';
import 'package:car_wash/src/ui/menu/home/home_screen.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> with TickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    controller!.addListener(() {
    });
    super.initState();
  }
  String dropdownValue1 = 'Modelni tanlang';
  String dropdownValue2 = 'Rangi tanlang';
  bool container = false;
  bool switchs = false;
  bool on = false;
  bool on1 = false;
  bool on2 = false;
  bool on3 = false;
  bool on31 = false;

  // List of items in our dropdown menu
  var items = [
    'Markani tanlang',
    'Chevrolet',
    'Audi',
    'BMW',
    'Mers',
  ];
  var items1 = [
    'Modelni tanlang',
    'Chevrolet',
    'Audi',
    'BMW',
    'Mers',
  ];

  var items2 = [
    'Rangi tanlang',
    'Chevrolet',
    'Audi',
    'BMW',
    'Mers',
  ];

  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return landscapeMode(h, w);
        } else {
          return portraitMode(h, w, context);
        }
      },
    );
  }
  @override
  Widget landscapeMode(double h, double w,) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Buyurtma olish',
          style: TextStyle(
            fontSize: 36 * h,
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColor.background,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Container(
              width: double.infinity,
              child: Center(child: Text('Mashina',style: TextStyle(fontSize: 24*h,color: AppColor.blue),)),
            ),
            Container(
              width: double.infinity,
              child: Center(child: Text('Xizmatlar',style: TextStyle(fontSize: 24*h,color: AppColor.grey),)),
            ),
            Container(
              width: double.infinity,
              child: Center(child: Text('Ma’lumoti',style: TextStyle(fontSize: 24*h,color: AppColor.grey),)),
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          AddCarScreen(),
          ServiceScreen(),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
  Widget portraitMode(double h, double w,BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                flex: 1,
                child: Text(
                  'Buyurtma olish',
                  style:
                  TextStyle(fontSize: 36 * h, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(width: 32 * w),
              Container(
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
                      '_timeHour,',
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
                      '_timerDate,',
                      style: TextStyle(
                        fontSize: 24 * w,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 30 * w,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 70 * w),
            ],
          ),
          SizedBox(
            height: 62 * h,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 70 * w, right: 70 * w),
              padding:
              EdgeInsets.symmetric(vertical: 70 * h, horizontal: 50 * w),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      offset: Offset(15, 20),
                      blurRadius: 13,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.white),
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
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30 * w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.blue),
                            ),
                            child: DropdownButton(
                              underline: const SizedBox.shrink(),
                              focusColor: Colors.transparent,
                              value: dropdownValue,
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
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30 * w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.blue),
                            ),
                            child: DropdownButton(
                              underline: const SizedBox.shrink(),
                              focusColor: Colors.transparent,
                              value: dropdownValue1,
                              isExpanded: true,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items1.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue1 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30 * w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.blue),
                            ),
                            child: DropdownButton(
                              underline: const SizedBox.shrink(),
                              focusColor: Colors.transparent,
                              value: dropdownValue2,
                              isExpanded: true,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items2.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue2 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
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
                                hintText: 'Davlat raqami',
                                labelStyle: TextStyle(
                                  color: AppColor.grey.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: EdgeInsets.only(left: 30 * w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.blue),
                            ),
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Telfon raqami',
                                helperStyle: TextStyle(
                                  color: AppColor.grey.withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            padding: EdgeInsets.only(left: 30 * w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColor.blue),
                            ),
                            alignment: Alignment.centerLeft,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Izoh',
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
                  SizedBox(width: 90 * w),
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
                        Expanded(
                          flex: 7,
                          child: GestureDetector(
                            onTap: () {
                              on31 = !on31;
                              setState(() {
                                container = !container;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30 * w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColor.blue),
                              ),
                              child: Row(
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
                        ),
                        SizedBox(
                          height: 30 * h,
                        ),
                        Expanded(
                            flex: 45,
                            child: container
                                ? Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30 * w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColor.blue),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20 * w,
                                  ),
                                  Row(
                                    children: [
                                      FlutterSwitch(
                                          activeColor: AppColor.blue,
                                          inactiveColor: AppColor.grey,
                                          width: 60 * w,
                                          height: 30 * h,
                                          toggleSize: 22.5 * h,
                                          value: on1,
                                          onToggle: (onToggle) {
                                            setState(() {
                                              on1 = onToggle;
                                            });
                                          }),
                                      SizedBox(
                                        width: 20 * w,
                                      ),
                                      Text(
                                        'Chang yutgich',
                                        style:
                                        TextStyle(fontSize: 24 * h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20 * w,
                                  ),
                                  Row(
                                    children: [
                                      FlutterSwitch(
                                          activeColor: AppColor.blue,
                                          inactiveColor: AppColor.grey,
                                          width: 60 * w,
                                          height: 30 * h,
                                          toggleSize: 22.5 * h,
                                          value: on1,
                                          onToggle: (onToggle) {
                                            setState(() {
                                              on1 = onToggle;
                                            });
                                          }),
                                      SizedBox(
                                        width: 20 * w,
                                      ),
                                      Text(
                                        'Ko‘pirtirgich',
                                        style:
                                        TextStyle(fontSize: 24 * h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20 * w,
                                  ),
                                  Row(
                                    children: [
                                      FlutterSwitch(
                                          activeColor: AppColor.blue,
                                          inactiveColor: AppColor.grey,
                                          width: 60 * w,
                                          height: 30 * h,
                                          toggleSize: 22.5 * h,
                                          value: on1,
                                          onToggle: (onToggle) {
                                            setState(() {
                                              on1 = onToggle;
                                            });
                                          }),
                                      SizedBox(
                                        width: 20 * w,
                                      ),
                                      Text(
                                        'Hushbo‘ylik',
                                        style:
                                        TextStyle(fontSize: 24 * h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20 * w,
                                  ),
                                  Row(
                                    children: [
                                      FlutterSwitch(
                                          activeColor: AppColor.blue,
                                          inactiveColor: AppColor.grey,
                                          width: 60 * w,
                                          height: 30 * h,
                                          toggleSize: 22.5 * h,
                                          value: on1,
                                          onToggle: (onToggle) {
                                            setState(() {
                                              on1 = onToggle;
                                            });
                                          }),
                                      SizedBox(
                                        width: 20 * w,
                                      ),
                                      Text(
                                        'Ko‘pirtirgich',
                                        style:
                                        TextStyle(fontSize: 24 * h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20 * w,
                                  ),
                                  Row(
                                    children: [
                                      FlutterSwitch(
                                          activeColor: AppColor.blue,
                                          inactiveColor: AppColor.grey,
                                          width: 60 * w,
                                          height: 30 * h,
                                          toggleSize: 22.5 * h,
                                          value: on1,
                                          onToggle: (onToggle) {
                                            setState(() {
                                              on1 = onToggle;
                                            });
                                          }),
                                      SizedBox(
                                        width: 20 * w,
                                      ),
                                      Text(
                                        'Ko‘pirtirgich',
                                        style:
                                        TextStyle(fontSize: 24 * h),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                                : Container()),
                        SizedBox(
                          height: 30 * h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 90 * w),
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColor.blue),
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 41 * w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset('assets/image/malibu.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70 * h,
          ),
        ],
      ),
    );
  }
}
