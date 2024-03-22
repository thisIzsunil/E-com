// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../utils/app-constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appScendoryCotor,
        title: Text("Welcome to my app"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset('assets/images/splash2.json'),
            ),
            Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Happy Shopping",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.6,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appScendoryCotor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/google.png',
                      width: Get.width / 12,
                      height: Get.height / 12,
                    ),
                    label: Text(
                      "Sign in wiht google",
                      style: TextStyle(color: AppConstant.appTextCotor),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 45 ,
            ),
            Material(
              child: Container(
                width: Get.width / 1.6,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appScendoryCotor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/gmail.png',
                      width: Get.width / 12,
                      height: Get.height / 12,
                    ),
                    label: Text(
                      "Sign in with email",
                      style: TextStyle(color: AppConstant.appTextCotor),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
