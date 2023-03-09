import 'package:exchange_prices/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/app_strings.dart';
import '../core/utils/assets_mangers.dart';
import 'login_screen.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColores.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                /*Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));*/
                Get.to(LoginScreen());
              },
              child: Image.asset(ImgAssets.logo),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                AppStrings.logo,
                style: TextStyle(
                    color: AppColores.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // Center(
            //   child: Text(
            //     'اسعار الصرف',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 50,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
