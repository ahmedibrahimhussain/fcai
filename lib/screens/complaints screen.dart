import 'package:flutter/material.dart';
import 'package:get/get.dart.';
import 'package:untitled2/models/models.dart';
import '../controller/registration controller.dart';

class ComplaintsScreen extends StatelessWidget {
  var complaintsTypeController = TextEditingController();
  var descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<RegistrationController>(
            init: RegistrationController(),
            builder: (controller) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: controller.formKey.value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WELCOME".tr,
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Enter your complaints".tr,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          defaultFormField(
                              controller: complaintsTypeController,
                              type: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email Address can not be empty";
                                }
                                return null;
                              },
                              labelText: "Complaints Type".tr,
                              PrefixIcon: Icons.text_fields),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultFormField(
                              maxLines: 6,
                              controller: descriptionController,
                              type: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email Address can not be empty";
                                }
                                return null;
                              },
                              labelText: "Description".tr,
                              PrefixIcon: Icons.description),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultButton(
                              onPressed: () {
                                print(descriptionController);
                                print(complaintsTypeController);
                              },
                              text: "Submit".tr),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
