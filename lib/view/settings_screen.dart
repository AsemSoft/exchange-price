import 'package:flutter/material.dart';

import '../widgets/custome_appBar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: customeAppBar(title: 'الاعدادت', icon: Icons.settings),
    );
  }
}
