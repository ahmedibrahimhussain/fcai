import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  var nationalIdController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var codeController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>().obs;
  var userController = TextEditingController().obs;
}
