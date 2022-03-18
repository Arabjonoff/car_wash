import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/bloc/home_bloc.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String weather =
      'https://api.openweathermap.org/data/2.5/weather?q=Andijan&appid=4d8fb5b93d4af21d66a2948710284366&units=metric&lang=uz';

  // String _timeHour =
  //         "${Utils.numberFormat(DateTime.now().hour)} : ${Utils.numberFormat(DateTime.now().minute)} : ${Utils.numberFormat(DateTime.now().second)}",
  //     _timerDate =
  //         "${Utils.numberFormat(DateTime.now().day)}.${Utils.numberFormat(DateTime.now().month)}.${Utils.numberFormat(DateTime.now().year)}";

  @override
  void initState() {
    homeBloc.getHome();
    // Timer.periodic(const Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

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
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: StreamBuilder<HomeModel>(
        stream: homeBloc.getHomeInfo,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            HomeModel data = snapshot.data!;
            return Column(
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
                        style: TextStyle(
                          fontSize: 36 * h,
                          fontWeight: FontWeight.w600,
                        ),
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
                              '_timeHour',
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
                              '_timerDate',
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
                                      blurRadius: 10,
                                    ),
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
                                      data.income.toString() + " UZS",
                                      textAlign: TextAlign.center,
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
                                      data.turn.toString() + ' ta',
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
                              child: GestureDetector(
                                onTap: () {},
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
                                        data.expend.toString() + ' UZS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 36 * h,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.white),
                                      ),
                                    ],
                                  ),
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
                                      data.washing.toString() + ' ta',
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
                                          fontSize: 36 * w,
                                          color: AppColor.white),
                                    ),
                                    const Spacer(),
                                    Text(
                                      DateFormat('dd').format(DateTime.now()) +
                                          '-yanvar',
                                      style: TextStyle(
                                          fontSize: 36 * w,
                                          color: AppColor.white),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: 35 * w),
                                height: 155 * h,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            width: 70 * w,
                                            child: Column(
                                              children: [
                                                Text(
                                                  '29°C',
                                                  style: TextStyle(
                                                      fontSize: 18 * h,
                                                      color: AppColor.white),
                                                ),
                                                Image.asset(
                                                  'assets/image/cloud.png',
                                                ),
                                                Text(
                                                  '11:00',
                                                  style: TextStyle(
                                                      color: AppColor.white,
                                                      fontSize: 18 * h),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(),
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 35 * w),
                                  height: 155 * h,
                                  child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            SizedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Yanvar, 13',
                                                        style: TextStyle(
                                                            fontSize: 18 * h,
                                                            color:
                                                                AppColor.white),
                                                      ),
                                                      const Spacer(),
                                                      Center(
                                                        child: Image.asset(
                                                          "",
                                                          height: 90 * h,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      Text(
                                                        '11:00',
                                                        style: TextStyle(
                                                            color:
                                                                AppColor.white,
                                                            fontSize: 18 * h),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
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
            );
          }
          return Shimmer.fromColors(
              child: Column(
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
                          '',
                          style: TextStyle(
                              fontSize: 36 * h,
                              fontWeight: FontWeight.w600,
                              color: Colors.cyan),
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
                              SizedBox(
                                width: 10 * w,
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  fontSize: 24 * w,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 30 * w,
                              ),
                              SizedBox(
                                width: 10 * w,
                              ),
                              Text(
                                '',
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
                                        blurRadius: 10,
                                      ),
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
                                        "",
                                        textAlign: TextAlign.center,
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
                                        ' ta',
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
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.yellow,
                                      boxShadow: const [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.05),
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
                                          ' UZS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 36 * h,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.white),
                                        ),
                                      ],
                                    ),
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
                                        ' ta',
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
                                            fontSize: 36 * w,
                                            color: AppColor.white),
                                      ),
                                      const Spacer(),
                                      Text(
                                        DateFormat('dd')
                                                .format(DateTime.now()) +
                                            '-yanvar',
                                        style: TextStyle(
                                            fontSize: 36 * w,
                                            color: AppColor.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 35 * w),
                                  height: 155 * h,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            SizedBox(
                                              width: 70 * w,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '29°C',
                                                    style: TextStyle(
                                                        fontSize: 18 * h,
                                                        color: AppColor.white),
                                                  ),
                                                  Image.asset(
                                                    'assets/image/cloud.png',
                                                  ),
                                                  Text(
                                                    '11:00',
                                                    style: TextStyle(
                                                        color: AppColor.white,
                                                        fontSize: 18 * h),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 35 * w),
                                    height: 155 * h,
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Yanvar, 13',
                                                          style: TextStyle(
                                                              fontSize: 18 * h,
                                                              color: AppColor
                                                                  .white),
                                                        ),
                                                        const Spacer(),
                                                        Center(
                                                          child: Image.asset(
                                                            "",
                                                            height: 90 * h,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          '11:00',
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .white,
                                                              fontSize: 18 * h),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                  ),
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
              baseColor: AppColor.shimmerBaseColor,
              highlightColor: AppColor.grey);
        },
      ),
    );
  }

  Widget landscapeMode(
    double h,
    double w,
  ) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.background,
        centerTitle: false,
        title: Text(
          'Bosh sahifa',
          style: TextStyle(
            fontSize: 36 * h,
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: 70 * w,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 422 * w,
                  height: 348 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.blue,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(15, 20),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30 * h),
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/money_recive.svg',
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
                        '12111 UZS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100 * w,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 422 * w,
                  height: 348 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(15, 20),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30 * h),
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/money_send.svg',
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
                        '- 12111 UZS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70 * w,
              ),
            ],
          ),
          SizedBox(
            height: 50 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 70 * w,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 422 * w,
                  height: 348 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.blue,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(15, 20),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30 * h),
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/car3.svg',
                        ),
                      ),
                      SizedBox(height: 32 * h),
                      Text(
                        'Navabat',
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                      Text(
                        '3 ta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100 * w,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 422 * w,
                  height: 348 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(15, 20),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30 * h),
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/car3.svg',
                        ),
                      ),
                      SizedBox(height: 32 * h),
                      Text(
                        'Yuvulmoqda',
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                      Text(
                        '10 ta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36 * h,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70 * w,
              ),
            ],
          ),
          SizedBox(
            height: 50 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 70 * w,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500 * h,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50 * w,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50 * w,
                          ),
                          Text(
                            'Bugun',
                            style: TextStyle(
                              fontSize: 36 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '12 - yanavar',
                            style: TextStyle(
                              fontSize: 24 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 50 * w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50 * h,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 50 * w),
                          height: 155 * h,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 22,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 20 * w),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20 * w),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              AppColor.grey.withOpacity(0.6)),
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.2),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 13 * h,
                                        ),
                                        Text(
                                          '29°C',
                                          style: TextStyle(
                                              fontSize: 18 * h,
                                              color: AppColor.white),
                                        ),
                                        SizedBox(
                                          height: 23 * h,
                                        ),
                                        Center(
                                          child: SvgPicture.asset(
                                              'assets/icons/car.svg'),
                                        ),
                                        SizedBox(
                                          height: 20 * h,
                                        ),
                                        Text('16 00',
                                            style: TextStyle(
                                                fontSize: 18 * h,
                                                color: AppColor.white))
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: 30 * h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70 * w),
                        child: Text(
                          'Haftalik',
                          style: TextStyle(
                            fontSize: 36 * h,
                            color: AppColor.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 70 * w),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Yanvar,' +index.toString(),
                                        style: TextStyle(
                                          fontSize: 18 * h,
                                          color: AppColor.white,
                                        ),
                                      ),
                                      const Spacer(),
                                     SvgPicture.asset('assets/icons/cloud.svg',width: 44,),
                                     const  Spacer(),
                                      Text(
                                        '29',
                                        style: TextStyle(
                                          fontSize: 18 * h,
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70 * w,
              ),
            ],
          ),
          SizedBox(
            height: 50 * h,
          ),
        ],
      ),
    );
  }
}
