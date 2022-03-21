import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

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
  Widget portraitMode(double h ,double w, BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100 * h,
              ),
              Container(
                height: 496 * h,
                margin: EdgeInsets.symmetric(horizontal: 70 * w),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 70 * w,
                  vertical: 38 * h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.blue,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ishchilar:' + "4 ta",
                          style: TextStyle(
                            fontSize: 42 * h,
                            color: AppColor.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 21 * w),
                          height: 58 * h,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/add_circle.svg',width: 30*w,),
                              SizedBox(width: 10*w,),
                              Text(
                                'ishchi qo‘shish',
                                style: TextStyle(
                                  fontSize: 30 *w,
                                  color: AppColor.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40 * h),
                    Row(
                      children: [
                        SizedBox(width: 35 * w),
                        SizedBox(width: 25 * w),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Ism",
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Foiz",
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Text("Bugunlik ish haqi",
                              style: TextStyle(
                                fontSize: 30 * h,
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("O‘zgartirish",
                              style: TextStyle(
                                fontSize: 30 * h,
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 12*h,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 12,
                        shrinkWrap: true,
                        itemBuilder: (_, __) {
                          return Row(
                            children: [
                              SvgPicture.asset('assets/icons/user.svg',width: 35*w,),
                              SizedBox(width: 25 * w),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  "Jahongir",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "50%",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "50 000 UZS",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/money.svg',width: 40*w,),
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/edit.svg',width: 40*w,),
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/trash.svg',width: 40*w,),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45 * h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70 * w),
                child: Row(
                  children: [
                    Container(
                      width: 510 * w,
                      height: 600 * h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.yellow),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 38 * h,
                          ),
                          Text(
                            'Yuvish yo‘laklari',
                            style: TextStyle(
                                fontSize: 42 * h,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white),
                          ),
                          SizedBox(
                            height: 20 * h,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 104 * w),
                            height: 58 * h,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 22 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/add_circle.svg',
                                  width: 30 * w,
                                ),
                                SizedBox(
                                  width: 12 * w,
                                ),
                                Text(
                                  'ishchi qo‘shish',
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50 * h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 14,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 30 * h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/house.svg',
                                        width: 35 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      Text(
                                        '1-yuvish yo‘lagi',
                                        style: TextStyle(
                                            fontSize: 30 * h,
                                            color: AppColor.white),
                                      ),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        'assets/icons/trash.svg',
                                        width: 40 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 45 * w,
                    ),
                    Container(
                      width: 510 * w,
                      height: 600 * h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.blue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 38 * h,
                          ),
                          Text(
                            'Xizmatlar',
                            style: TextStyle(
                                fontSize: 42 * h,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white),
                          ),
                          SizedBox(
                            height: 20 * h,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 104 * w),
                            height: 58 * h,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 22 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/add_circle.svg',
                                  width: 30 * w,
                                ),
                                SizedBox(
                                  width: 12 * w,
                                ),
                                Text(
                                  'ishchi qo‘shish',
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50 * h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 14,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 30 * h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/math.svg',
                                        width: 35 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      Text(
                                        '1-yuvish yo‘lagi',
                                        style: TextStyle(
                                            fontSize: 30 * h,
                                            color: AppColor.white),
                                      ),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        'assets/icons/trash.svg',
                                        width: 40 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 45 * w,
                    ),
                    Container(
                      width: 510 * w,
                      height: 600 * h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.yellow),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 38 * h,
                          ),
                          Text(
                            'Tariflar',
                            style: TextStyle(
                                fontSize: 42 * h,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white),
                          ),
                          SizedBox(
                            height: 20 * h,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 104 * w),
                            height: 58 * h,
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 22 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/add_circle.svg',
                                  width: 30 * w,
                                ),
                                SizedBox(
                                  width: 12 * w,
                                ),
                                Text(
                                  'ishchi qo‘shish',
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.blue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50 * h,
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 14,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 30 * h),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/trend.svg',
                                        width: 35 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                      Text(
                                        '1-yuvish yo‘lagi',
                                        style: TextStyle(
                                            fontSize: 30 * h,
                                            color: AppColor.white),
                                      ),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        'assets/icons/trash.svg',
                                        width: 40 * w,
                                      ),
                                      SizedBox(
                                        width: 25 * w,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45 * h,
              )
            ],
          )
        ],
      ),
    );
  }
  Widget landscapeMode(double h ,double w,) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100 * h,
              ),
              Container(
                height: 496 * h,
                margin: EdgeInsets.symmetric(horizontal: 70 * w),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 70 * w,
                  vertical: 38 * h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.blue,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ishchilar:' + "4 ta",
                          style: TextStyle(
                            fontSize: 42 * h,
                            color: AppColor.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 21 * w),
                          height: 58 * h,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/icons/add_circle.svg',width: 30*w,),
                              SizedBox(width: 10*w,),
                              Text(
                                'ishchi qo‘shish',
                                style: TextStyle(
                                  fontSize: 30 *w,
                                  color: AppColor.blue,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40 * h),
                    Row(
                      children: [
                        SizedBox(width: 35 * w),
                        SizedBox(width: 25 * w),
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Ism",
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Foiz",
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Text("Bugunlik ish haqi",
                              style: TextStyle(
                                fontSize: 30 * h,
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("O‘zgartirish",
                              style: TextStyle(
                                fontSize: 30 * h,
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(height: 12*h,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 12,
                        shrinkWrap: true,
                        itemBuilder: (_, __) {
                          return Row(
                            children: [
                              SvgPicture.asset('assets/icons/user.svg',width: 35*w,),
                              SizedBox(width: 25 * w),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  "Jahongir",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "50%",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "50 000 UZS",
                                  style: TextStyle(
                                    fontSize: 30 * h,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/money.svg',width: 40*w,),
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/edit.svg',width: 40*w,),
                                    SizedBox(width: 25*w,),
                                    SvgPicture.asset('assets/icons/trash.svg',width: 40*w,),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45 * h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 600 * h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 38 * h,
                    ),
                    Text(
                      'Yuvish yo‘laklari',
                      style: TextStyle(
                          fontSize: 42 * h,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                    ),
                    SizedBox(
                      height: 20 * h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 104 * w),
                      height: 58 * h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/add_circle.svg',
                          ),
                          SizedBox(
                            width: 12 * w,
                          ),
                          Text(
                            'ishchi qo‘shish',
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50 * h,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 30 * h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 25 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/house.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                                Text(
                                  '1-yuvish yo‘lagi',
                                  style: TextStyle(
                                      fontSize: 30 * h,
                                      color: AppColor.white),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/trash.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 45 * h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 600 * h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 38 * h,
                    ),
                    Text(
                      'Xizmatlar',
                      style: TextStyle(
                          fontSize: 42 * h,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                    ),
                    SizedBox(
                      height: 20 * h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 104 * w),
                      height: 58 * h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/add_circle.svg',
                          ),
                          SizedBox(
                            width: 12 * w,
                          ),
                          Text(
                            'ishchi qo‘shish',
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50 * h,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 30 * h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 25 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/house.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                                Text(
                                  '1-yuvish yo‘lagi',
                                  style: TextStyle(
                                      fontSize: 30 * h,
                                      color: AppColor.white),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/trash.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 45 * h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 600 * h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellow),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 38 * h,
                    ),
                    Text(
                      'Tariflar',
                      style: TextStyle(
                          fontSize: 42 * h,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                    ),
                    SizedBox(
                      height: 20 * h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 104 * w),
                      height: 58 * h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/add_circle.svg',
                          ),
                          SizedBox(
                            width: 12 * w,
                          ),
                          Text(
                            'ishchi qo‘shish',
                            style: TextStyle(
                              fontSize: 30 * h,
                              color: AppColor.blue,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50 * h,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 30 * h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 25 * w,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/house.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                                Text(
                                  '1-yuvish yo‘lagi',
                                  style: TextStyle(
                                      fontSize: 30 * h,
                                      color: AppColor.white),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/trash.svg',
                                ),
                                SizedBox(
                                  width: 25 * w,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 45 * h,
              ),
            ],
          )
        ],
      ),
    );
  }

}
