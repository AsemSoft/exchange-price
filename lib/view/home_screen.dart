import 'package:flutter/material.dart';

import '../widgets/custome_appBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('buuild is called');
    return Scaffold(
      endDrawer: Drawer(),
      appBar: customeAppBar(title: 'الصفحة الرئيسية', icon: Icons.home),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });

          print("count vlaue :$count");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
