import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'currency_con.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashCurrency(),
  ));
}

class SplashCurrency extends StatefulWidget {
  const SplashCurrency({super.key});

  @override
  State<SplashCurrency> createState() => _SplashCurrencyState();
}

class _SplashCurrencyState extends State<SplashCurrency> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CurrencyConverter()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body:Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/dollarrupee.png'),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  // Padding(
                  //     padding: const EdgeInsets.all(20),
                  //     child: Text(
                  //       'CURRENCY CONVERTER',
                  //       style: GoogleFonts.oswald(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white,
                  //           fontSize: 20),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
              const Spacer(),

              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Welcome',
                  style: GoogleFonts.josefinSans(fontSize: 20,
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ],
      ),
            ],
          ),

    );
  }
}
