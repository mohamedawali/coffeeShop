import 'package:cart/binding.dart';
import 'package:cart/route/rote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'constant/colorConstant.dart';

void main() {
  runApp(  MyApp(routes: Routes(),));
}

class MyApp extends StatelessWidget {
  Routes routes;
    MyApp({Key? key,required this.routes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor:background,));
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
initialRoute: '/',

getPages:Routes.routes,
       theme: ThemeData(
      primarySwatch:Colors.cyan,
      ),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  });}
}

