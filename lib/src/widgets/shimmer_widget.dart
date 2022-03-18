import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
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
                          decoration: const BoxDecoration(),
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
    );
  }
}
