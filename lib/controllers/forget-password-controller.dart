import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_com/screens/auth-ui/sign-in-screen.dart';
import 'package:e_com/utils/app-constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> ForgetPasswordMethod(
    String userEmail,
  ) async {
    try {
      EasyLoading.show(status: "Please wait..");
      await _auth.sendPasswordResetEmail(
          email:
              userEmail); // send email to user email  thorugh email send link
      Get.snackbar(
        "Request Sent Sucessfully",
        "Password reset link sent to $userEmail ",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppConstant.appScendoryCotor,
        colorText: AppConstant.appTextCotor,
      );

      Get.offAll(()=> SignInScreen());

      EasyLoading.dismiss();
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      //print("")
      Get.snackbar(
        "Error",
        "$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppConstant.appScendoryCotor,
        colorText: AppConstant.appTextCotor,
      );
    }
  }
}
