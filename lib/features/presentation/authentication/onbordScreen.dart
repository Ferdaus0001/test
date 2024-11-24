import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/costom_button.dart';
import '../../../common_widgets/costom_clors.dart';
import 'LoginScreen.dart';

class OnbordScreen extends StatefulWidget {
  const OnbordScreen({super.key});

  @override
  State<OnbordScreen> createState() => _OnbordScreenState();
}

class _OnbordScreenState extends State<OnbordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://th.bing.com/th?id=OIP.cn-oPOC6O-FsEMvLRj5KbwHaGi&w=266&h=234&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
              height: 400,
              width: 400,
            ),
            Text(
              'Discover your Dream and best life for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
                color: Appclors.primaryColors,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  title: 'Login',
                  buttonColor: Colors.blue,
                  borderRadius: 12,
                  width: 160,
                  titleColor: Colors.white,
                  fontSize: 18,
                  onTap: () => Get.to(() => const Loginscreen()), fontsize: 22, white: 200,
                ),
                CustomButton(
                  title: 'Sign Up',
                  buttonColor: Colors.transparent,
                  borderRadius: 12,
                  width: 160,
                  titleColor: Colors.black,
                  fontSize: 18,
                  onTap: () {
                    print("Sign Up button tapped");
                  }, fontsize: 22, white: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
