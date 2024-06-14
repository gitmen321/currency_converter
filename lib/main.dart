import 'package:currency_conv/view/cupertino_design/cupertinoConvertor.dart';
import 'package:currency_conv/view/currency_con.dart';
import 'package:currency_conv/view/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashCurrency(),
    );
  }
}
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp (
      home : CupertinoConvertor(),
    );
  }
}

