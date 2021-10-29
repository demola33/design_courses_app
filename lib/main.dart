import 'package:flutter/material.dart';
import 'package:design_courses/app/home/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 840),
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Design Courses',
        home: HomeScreen(),
      ),
    );
  }
}
