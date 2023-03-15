import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/screens/Sign%20in%20Screen.dart';
import 'package:untitled2/screens/login%20screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'image/logo.png',
                width: 180,
                height: 180,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "FCAI  BSU ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              defaultButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  text: "Login".tr),
              const SizedBox(
                height: 20,
              ),
              defaultButton(
                  onPressed: () {
                    Get.to(SigninScreen());
                  },
                  text: "Sign up".tr)
            ],
          ),
        ),
      ),
    ));
  }
}
