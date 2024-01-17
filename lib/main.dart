import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restaurantcustomerapp/categories/all_categories.dart';
import 'package:restaurantcustomerapp/constants/constants.dart';
import 'package:restaurantcustomerapp/views/home/home.dart';
import 'package:restaurantcustomerapp/views/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foody',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
           scaffoldBackgroundColor: kOffWhite,
           iconTheme:const IconThemeData(color: kDark),
           primarySwatch: Colors.grey

          ),
          home: child,
        );
      },
      child:const MainScreen(),
    );
  }
}

