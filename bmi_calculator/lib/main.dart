import 'package:bmi_calculator/utils/route_utils.dart';
import 'package:bmi_calculator/views/screens/bmi_page.dart';
import 'package:bmi_calculator/views/screens/detail_page.dart';
import 'package:bmi_calculator/views/screens/gender_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true
      ),

      initialRoute: MyRoute.GenderPage,
      routes: {
        MyRoute.GenderPage : (context) => const GenderPage(),
        MyRoute.DetailPage : (context) => const DetailPage(),
        MyRoute.BMIPage : (context) => const BMIPage(),
      },
    );
  }
}
