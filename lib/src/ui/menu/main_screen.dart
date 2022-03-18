import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/ui/menu/add_order/order_screen.dart';
import 'package:car_wash/src/ui/menu/add_order/landscapeMode/tabbar_screen.dart';
import 'package:car_wash/src/ui/menu/home/home_screen.dart';
import 'package:car_wash/src/ui/menu/settings/setting_screen.dart';
import 'package:car_wash/src/ui/menu/wait/wait_screen.dart';
import 'package:car_wash/src/ui/menu/washing/washing_screen.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  List<Widget> data = [
    const HomeScreen(),
    const TabbarScreen(),
    const WaitScreen(),
    const WashingScreen(),
    const SettingsScreen(),
  ];

  @override
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

  Widget portraitMode(double h, double w, BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          Container(
            width: 150 * w,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(15, 20),
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                  )
                ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: AppColor.white),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    change(0);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h, top: 70 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 0
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 0
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/home.svg',
                        width: 40 * w,
                        color: _selectedIndex == 0
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    change(1);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 1
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 1
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/add.svg',
                        width: 40 * w,
                        color: _selectedIndex == 1
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    change(2);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 2
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 2
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/car.svg',
                        width: 40 * w,
                        color: _selectedIndex == 2
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    change(3);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 3
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 3
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/car2.svg',
                        width: 40 * w,
                        color: _selectedIndex == 3
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    change(4);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 4
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 4
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/dollar.svg',
                        width: 40 * w,
                        color: _selectedIndex == 4
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    change(5);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 50 * h),
                    height: 70 * h,
                    width: 70 * h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: _selectedIndex == 5
                                ? AppColor.white
                                : AppColor.grey),
                        color: _selectedIndex == 5
                            ? AppColor.blue
                            : AppColor.white),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/settings.svg',
                        width: 40 * w,
                        color: _selectedIndex == 5
                            ? AppColor.white
                            : AppColor.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              onPageChanged: (_index) {
                setState(() {
                  _selectedIndex = _index;
                });
              },
              controller: _controller,
              itemBuilder: (context, index) {
                return data[index];
              },
              itemCount: data.length, // Can be null
            ),
          ),
        ],
      ),
    );
  }

  Widget landscapeMode(double h, double w) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (_index) {
          setState(() {
            _selectedIndex = _index;
          });
        },
        controller: _controller,
        itemBuilder: (context, index) {
          return data[index];
        },
        itemCount: data.length, // Can be null
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (_index) {
          change(_index);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _selectedIndex == 0 ? AppColor.blue : AppColor.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Center(
              child: SvgPicture.asset(
                'assets/icons/add.svg',
                color: _selectedIndex == 1 ? AppColor.blue : AppColor.grey,
              ),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/car.svg',
              color: _selectedIndex == 2 ? AppColor.blue : AppColor.grey,
            ),
            label: 'Wait',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/car.svg',
              color: _selectedIndex == 3 ? AppColor.blue : AppColor.grey,
            ),
            label: 'Washing',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/car.svg',
              color: _selectedIndex == 4 ? AppColor.blue : AppColor.grey,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }

  change(int index) {
    setState(() {
      _selectedIndex = index;
      _controller.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 270),
        curve: Curves.easeIn,
      );
    });
  }
}
