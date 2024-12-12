import 'package:aber_taxi/View/Screens/Authentication/PhoneVerification.dart';
import 'package:aber_taxi/View/Screens/Authentication/SignUp.dart';
import 'package:aber_taxi/View/Screens/Home/Location_Select.dart';
import 'package:aber_taxi/View/Screens/Home/Location_Select2.dart';
import 'package:aber_taxi/View/Screens/Home/Vehicle_Select.dart';
import 'package:aber_taxi/View/Screens/Intro%20Screen/Screen2.dart';
import 'package:aber_taxi/View/Screens/Intro%20Screen/Screen3.dart';
import 'package:aber_taxi/View/Screens/Intro%20Screen/Screen4.dart';

import 'package:aber_taxi/View/Screens/Splash%20Screen/Splash%20Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VehicleSelect (),
    );
  }
}
