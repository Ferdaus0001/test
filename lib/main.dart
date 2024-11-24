import 'package:ferdaus/Providers/provider_Contoloer/Count_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'features/presentation/HomeScreen.dart';
import 'features/presentation/SplashScreen.dart';  // Add the package


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return ChangeNotifierProvider(create: (_)=> CountProvider(),
  child:  ScreenUtilInit(
    designSize: Size(375, 812),
    splitScreenMode: true,
    builder: (context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page: () => Splashscreen()),
        ],
      );
    },
  ),
);
  }
}
