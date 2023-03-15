import 'package:flutter/material.dart';
import 'package:get/get.dart.';

class ResultController extends GetxController {
  var studentName = "ahmed ibrahim hussain".obs;
  var studentSpecialty = "CS".obs;
  var studentCode = "000000".obs;
  var studentGpa = "3.00".obs;
  var studentPercentage = "80%".obs;
  var studentCompletedHour = "89".obs;
  var resultItemCount = 6.obs;
  var subjectCode = "CS311";
  var subjectName = "SOFT COMPUTING ";
  var gradeEstimation = "B+";
  var completedHours = 3;

  subjectRow() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: SizedBox(
          height: 45,
          child: Row(
            children: [
              Text(
                subjectCode,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: Text(
                  subjectName,
                  style: const TextStyle(
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                gradeEstimation,
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
                "$completedHours",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }

  resultRow() {
    return Padding(
        padding:
            const EdgeInsets.only(bottom: 20, right: 20, top: 40, left: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black26,
              boxShadow: const [
                BoxShadow(color: Colors.black12, offset: Offset(10, 10))
              ]),
          height: 50,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 10, left: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
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
                    const Text(
                      "80%",
                      style: TextStyle(
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
                    const Text(
                      "3.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
