import 'package:exchange_prices/view/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangePrice extends StatelessWidget {
  const ExchangePrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}
