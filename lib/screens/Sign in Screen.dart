import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart.';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/screens/login%20screen.dart';

import '../controller/registration controller.dart';
import 'home page screen.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: GetX<RegistrationController>(
          init: RegistrationController(),
          builder: (controller) {
            return Form(
              key: controller.formKey.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CREATE ACCOUNT".tr,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultFormField(
                      controller: controller.userController.value,
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "user account can not be empty";
                        }
                        return null;
                      },
                      labelText: "User Account".tr,
                      PrefixIcon: CupertinoIcons.person),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      controller: controller.nationalIdController.value,
                      type: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "User Account can not be empty";
                        }
                        return null;
                      },
                      labelText: "National id".tr,
                      PrefixIcon: Icons.credit_card),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      controller: controller.codeController.value,
                      type: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "National id can not be empty";
                        }
                        return null;
                      },
                      labelText: "Code".tr,
                      PrefixIcon: Icons.numbers),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                      controller: controller.passwordController.value,
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Code can not be empty";
                        }
                        return null;
                      },
                      labelText: "Password".tr,
                      obscure: true,
                      PrefixIcon: Icons.lock,
                      suffixIcon: CupertinoIcons.eye),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      onPressed: () {
                        if (controller.formKey.value.currentState!.validate()) {
                          Get.to(HomePageScreen());
                        }
                        ;
                      },
                      text: "CREATE ACCOUNT".tr),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        "if you have account".tr,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(LoginScreen());
                          },
                          child: Text(("click here".tr)))
                    ],
                  )
                ],
              ),
            );
          },
        )),
      ),
    ));
  }
}
