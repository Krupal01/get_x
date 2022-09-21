import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/home_scr.dart';
import 'package:get_x/second_scr.dart';
import 'package:get_x/third_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScr.route,
      getPages: [
        GetPage(name: HomeScr.route, page: ()=> const HomeScr()),
        GetPage(name: SecondScr.route, page: ()=> const SecondScr()),
        GetPage(name: ThirdScr.route, page: ()=> const ThirdScr()),
      ],
    );
  }
}
