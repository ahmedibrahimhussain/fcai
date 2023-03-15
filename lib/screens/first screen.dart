import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/screens/Sign%20in%20Screen.dart';
import 'package:untitled2/screens/login%20screen.dart';
import 'package:untitled2/screens/second%20screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 2),
      ),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'image/logo2.png',
                          width: 180,
                          height: 180,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          "WELCOME".tr,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        // defaultButton(
                        //     onPressed: (){
                        //       Get.to(SecondScreen() );
                        //     },
                        //     text: "Start")
                      ],
                    ),
                  ),
                ),
              )
            : SecondScreen();
      },
    ));
  }
}
