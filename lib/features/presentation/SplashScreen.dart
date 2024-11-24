import 'dart:async';

import 'package:ferdaus/common_widgets/confing_appname.dart';
import 'package:ferdaus/features/presentation/HomeScreen.dart';
import 'package:ferdaus/features/presentation/authentication/onbordScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Providers/prodersScreen.dart';
import '../../common_widgets/costom_clors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Get.offAll(Prodersscreen());
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
        color: Appclors.primaryColors,
        child: Center(
          child: Text(Appname.appName,style: TextStyle(fontSize: 39,fontWeight: FontWeight.bold,color: Appclors.Filcolors),),
        ),
      ),
    );
  }
}
