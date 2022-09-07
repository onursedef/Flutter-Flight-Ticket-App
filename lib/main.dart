import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_nav.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Styles.bgColor,
      ),
      home: const BottomNav(),
    );
  }
}


