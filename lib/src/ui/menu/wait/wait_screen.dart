import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';

class WaitScreen extends StatefulWidget {
  const WaitScreen({Key? key}) : super(key: key);

  @override
  _WaitScreenState createState() => _WaitScreenState();
}


class _WaitScreenState extends State<WaitScreen> {
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
  Widget portraitMode(double h,double w,BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 36,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20 * h),
                    margin: EdgeInsets.symmetric(
                        horizontal: 70 * w, vertical: 30 * h),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(4, 6),
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 12)
                        ],),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "#"+index.toString(),
                              style: TextStyle(
                                  fontSize: 40 * h,
                                  color: AppColor.yellow,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Image.asset(
                              'assets/image/malibu2.png',width: 180*w,
                            ),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Malibu',
                              style: TextStyle(fontSize: 40 * w,color: AppColor.grey),
                            ),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Image.asset('assets/image/chevrolet_logo.png',width: 110*w,),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Oq',
                              style: TextStyle(fontSize: 40 * w,color: AppColor.grey),
                            ),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              'Oddiy',
                              style: TextStyle(fontSize: 40 * w),
                            ),
                          ),
                        ),
                        Container(width: 1,height: 50*h,color: AppColor.grey,),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              '40 000 UZS',
                              style: TextStyle(fontSize: 40 * w),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget landscapeMode(double h,double w,) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    double w1 = Utils.getLanWidth(context);
    double h2 = Utils.getLanHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.background,
        centerTitle: false,
        title: Text('Navbat',style: TextStyle(color: AppColor.black,fontSize: 48*h,),),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 22,
            itemBuilder: (context,index){
            return Row(
              children: [
                SizedBox(width: 16*w1,),
                Container(
                  margin: EdgeInsets.only(bottom: 19),
                  width: 165*w1,
                  height: double.infinity,
                  color: Colors.redAccent,
                ),
                SizedBox(width: 16*w1,),
                Container(
                  margin: EdgeInsets.only(bottom: 19),
                  width: 165*w1,
                  height: double.infinity,
                  color: Colors.redAccent,
                ),
              ],
            );
          },),),
        ],
      ),);
  }
}
