import 'package:flutter/material.dart';

AppBar customeAppBar({required String title, IconData? icon}) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    leading: Icon(icon),
    backgroundColor: Color(0xff483771),
  );
}
