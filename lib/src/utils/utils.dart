import 'package:flutter/material.dart';

class Utils {
  static double getWidth(BuildContext context) =>
      MediaQuery.of(context).size.width / 1920;

  static double getHeight(BuildContext context) =>
      MediaQuery.of(context).size.height / 1080;

  static double getLanWidth(BuildContext context) =>
      MediaQuery.of(context).size.width / 375;

  static double getLanHeight(BuildContext context) =>
      MediaQuery.of(context).size.height / 872;

  static String numberFormat(int n) {
    if (n < 10) {
      return "0" + n.toString();
    } else {
      return n.toString();
    }
  }
}
