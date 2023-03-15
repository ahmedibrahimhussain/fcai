import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controller/Subject%20Registration%20Controller.dart';
import 'package:untitled2/models/models.dart';

class SubjectRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        title: Text(
          "Registration".tr,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: GetX<SubjectRegistrationController>(
        init: SubjectRegistrationController(),
        builder: (controller) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black26,
                ),
                height: MediaQuery.of(context).size.height * .9,
                child: ListView.separated(
                  itemCount: controller.registrationCount.value,
                  itemBuilder: (context, index) {
                    return controller.registerRow();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black,
                      height: 5,
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            context: context,
            builder: (context) {
              return GetX<SubjectRegistrationController>(
                  init: SubjectRegistrationController(),
                  builder: (controller) {
                    return Column(
                      children: [
                        Padding(
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
                                          Color.fromRGBO(63, 139, 141, 1.0),
                                          Color.fromRGBO(42, 148, 157, 1.0),
                                        ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black26,
                            ),
                            height: 350,
                            child: ListView.builder(
                                itemCount: controller.doneItem.value,
                                itemBuilder: (context, index) {
                                  return controller.doneRegistrationRow();
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: defaultButton(

                              onPressed: () {},
                              text: "SAVE".tr),
                        )
                      ],
                    );
                  });
            },
          );
        },
        backgroundColor: Colors.black45,
        child: Text(
          'DONE'.tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
