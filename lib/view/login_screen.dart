import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo
          Container(
            height: MediaQuery.of(context).size.height * .4,
            width: double.infinity,
            color: AppColores.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Image.asset(
                    'assets/logo.png',
                    width: 70,
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    'EXTCHANGE PRICE',
                    style: TextStyle(
                        color: AppColores.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          // login information
          Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColores.white,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(0, 3)),
                ],
              ),
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .35,
                  left: MediaQuery.of(context).size.width * .04,
                  right: MediaQuery.of(context).size.width * .04,
                  bottom: MediaQuery.of(context).size.height * .05),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColores.primaryColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColores.primaryColor,
                          ),
                          child: const Text(
                            'create account',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColores.primaryColor)),
                          child: const Text(
                            'sign out',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    initialValue: "write your name",
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
