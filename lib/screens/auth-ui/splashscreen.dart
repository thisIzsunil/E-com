// ignore_for_file: must_call_super

import 'dart:async';

import 'package:e_com/screens/auth-ui/welcome-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3),(){
      Get.offAll(()=>WelcomeScreen());
    });
    
  }

  @override
  Widget build(BuildContext context) {
// final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConstant.appScendoryCotor,
      appBar: AppBar(
        backgroundColor: AppConstant.appScendoryCotor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                alignment: Alignment.center,
                child: Lottie.asset('assets/images/splash.json'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: Get.width, //size.width,
              alignment: Alignment.center,
              child: Text(AppConstant.appPoweredBy,
                  style: TextStyle(
                      color: AppConstant.appTextCotor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
