import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopStudentsController extends GetxController {
  var id = "1".obs;
  var studentName = "Ahmed Ibrahim Hussain".obs;
  var studentGpa = 4.obs;
  var departmentName = "CS".obs;
  var men = "MEN".tr.obs;
  var women = "WOMEN".tr.obs;

  Padding topStudentsRow() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
        child: SizedBox(
          height: 45,
          child: Row(
            children: [
              Text(
                id.value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  studentName.value,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "${studentGpa.value}",
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
                departmentName.value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
