import 'package:e_com/utils/app-constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppConstant.appMainCotor ,
        title:Text(AppConstant.appMainName),
        centerTitle: true,
      ),
    );
  }
}