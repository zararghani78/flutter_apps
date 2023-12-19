import 'package:ecommer/Rregist_page.dart';
import 'package:ecommer/Splashscreen.dart';
import 'package:ecommer/bid_page.dart';
import 'package:ecommer/verifyscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Ecommerce App",
    debugShowCheckedModeBanner: false,

  routes:{

    "/":(context)=> Splashscreen(),
    "verifyscreen":(context)=>verifyscreen(),
    "Registpage":(Context)=>Sign_in(),
    "Bidpage":(context)=>Bidpage(),
  },
    );
  }
}