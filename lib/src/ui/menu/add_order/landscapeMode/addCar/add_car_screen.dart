import 'package:car_wash/src/app_color.dart';
import 'package:car_wash/src/utils/utils.dart';
import 'package:flutter/material.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}
String dropdownValue = 'Markani tanlang';
var items = [
  'Markani tanlang',
  'Chevrolet',
  'Audi',
  'BMW',
  'Mers',
];
class _AddCarScreenState extends State<AddCarScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.background,
      body: ListView(
        children: [
          SizedBox(height: 50*h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30 * w),
            margin: EdgeInsets.symmetric(horizontal: 50 * w),
            width: MediaQuery.of(context).size.width,
            height: 70 * h,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.blue,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              isExpanded: true,
              underline: const SizedBox.shrink(),
              focusColor: Colors.transparent,
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
          SizedBox(height: 30*h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30 * w),
            margin: EdgeInsets.symmetric(horizontal: 50 * w),
            width: MediaQuery.of(context).size.width,
            height: 70 * h,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.blue,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              isExpanded: true,
              underline: const SizedBox.shrink(),
              focusColor: Colors.transparent,
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
          SizedBox(height: 30*h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30 * w),
            margin: EdgeInsets.symmetric(horizontal: 50 * w),
            width: MediaQuery.of(context).size.width,
            height: 70 * h,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.blue,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              value: dropdownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              isExpanded: true,
              underline: const SizedBox.shrink(),
              focusColor: Colors.transparent,
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
          SizedBox(height: 30*h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30 * w),
            margin: EdgeInsets.symmetric(horizontal: 50 * w),
            width: MediaQuery.of(context).size.width,
            height: 70 * h,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.blue,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Davlat raqami',
                border: InputBorder.none
              ),
            )
          ),
          SizedBox(height: 30*h,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30 * w),
              margin: EdgeInsets.symmetric(horizontal: 50 * w),
              width: MediaQuery.of(context).size.width,
              height: 70 * h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Telefon raqami',
                    border: InputBorder.none
                ),
              )
          ),
          SizedBox(height: 30*h,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30 * w),
              margin: EdgeInsets.symmetric(horizontal: 50 * w),
              width: MediaQuery.of(context).size.width,
              height: 100 * h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Izoh',
                    border: InputBorder.none
                ),
              )
          ),
        ],
      ),
    );
  }
}
