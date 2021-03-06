import 'package:car_wash/src/auth/login_screen.dart';
import 'package:car_wash/src/ui/menu/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Wash Crm',
      theme: ThemeData(
        platform: TargetPlatform.iOS
      ),
      home: const MainScreen(),
    );
  }
}
