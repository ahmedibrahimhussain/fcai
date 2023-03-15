import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controller/result%20controller.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          centerTitle: true,
          title: Text(
            "Result".tr,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: GetX<ResultController>(
          init: ResultController(),
          builder: (controller) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26, offset: Offset(10, 10))
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black26,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          child: Row(
                            children: [
                              Text(
                                "NAME".tr,
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Text(
                                controller.studentName.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 5, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "SPECIALTY".tr,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Text(
                                controller.studentSpecialty.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "Code".tr,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 17,
                              ),
                              Text(
                                controller.studentCode.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 5, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "PERCENTAGE".tr,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Text(
                                controller.studentPercentage.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "GPA".tr,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                controller.studentGpa.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 5, left: 10),
                          child: Row(
                            children: [
                              Text(
                                "COMPLETED HOUR".tr,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                controller.studentCompletedHour.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                controller.resultRow(),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black26,
                    ),
                    height: 400,
                    child: ListView.builder(
                        itemCount: controller.resultItemCount.value,
                        itemBuilder: (context, index) {
                          return controller.subjectRow();
                        }),
                  ),
                ),
                controller.resultRow(),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black26,
                    ),
                    height: 400,
                    child: ListView.builder(
                        itemCount: controller.resultItemCount.value,
                        itemBuilder: (context, index) {
                          return controller.subjectRow();
                        }),
                  ),
                ),
                controller.resultRow(),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black26,
                    ),
                    height: 400,
                    child: ListView.builder(
                        itemCount: controller.resultItemCount.value,
                        itemBuilder: (context, index) {
                          return controller.subjectRow();
                        }),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
