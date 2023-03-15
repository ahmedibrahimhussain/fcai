import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/Subject Registration Controller.dart';
import '../models/models.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        title: const Text(
          "Registered Course Materials",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: GetX<SubjectRegistrationController>(
          init: SubjectRegistrationController(),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: Get.isDarkMode
                            ? const LinearGradient(
                                colors: [
                                    Color.fromRGBO(18, 54, 59, 1.0),
                                    Color.fromRGBO(3, 38, 44, 1.0),
                                    Color.fromRGBO(22, 63, 70, 1.0),
                                    Color.fromRGBO(42, 148, 157, 1.0),
                                  ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft)
                            : const LinearGradient(
                                colors: [
                                    Color.fromRGBO(156, 185, 189, 1.0),
                                    Color.fromRGBO(23, 74, 79, 1.0),
                                    Color.fromRGBO(74, 138, 140, 1.0),
                                    Color.fromRGBO(42, 148, 157, 1.0),
                                  ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black26,
                      ),
                      child: ListView.builder(
                          itemCount: controller.doneItem.value,
                          itemBuilder: (context, index) {
                            return controller.doneRegistrationRow();
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: defaultButton(onPressed: () {}, text: "SAVE".tr),
                )
              ],
            );
          }),
    );
  }
}
