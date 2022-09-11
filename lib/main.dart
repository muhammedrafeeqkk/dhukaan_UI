// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Home_Screen.dart';
import 'package:flutter_application_1/screen/Information_Screen.dart';
import 'package:flutter_application_1/screen/Payment_Screen.dart';
import 'package:flutter_application_1/screen/cateloguescreen.dart';
import 'package:flutter_application_1/screen/dukaanpage.dart';
import 'package:flutter_application_1/screen/orderscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI creation',
        theme: ThemeData(primaryColor: Colors.blue),
        home: HomeScreen());
  }
}
