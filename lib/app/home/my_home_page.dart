import 'package:design_courses/app/home/screens/side_bar_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SideBarScreen(),
    );
  }
}
