// ignore_for_file: must_call_super

import 'dart:async';

import 'package:e_com/controllers/get-user-data-controller.dart';
import 'package:e_com/screens/admin-panel/admin-main-screen.dart';
import 'package:e_com/screens/auth-ui/welcome-screen.dart';
import 'package:e_com/screens/user-panel/main-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  User? user = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      loggdin(context);
    });
  }
///// after this 3 seconds below code decide to go where according to user credentials

  Future<void> loggdin(BuildContext context) async {
    ///initializing controller
    if (user != null) {
      final GetUserDataController getUserDataController =
          Get.put(GetUserDataController());
      var userData = await getUserDataController.getUserData(user!.uid);
      if (userData[0]['isAdmin'] == true) {
        Get.offAll(() => AdminMainScreen());
      }else{
        Get.offAll(()=> MainScreen());

      }
    } else {
      Get.to(() =>
          WelcomeScreen()); //if user is not loggedin already or null it  got to welcome screen
    }
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
