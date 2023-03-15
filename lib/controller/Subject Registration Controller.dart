import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectRegistrationController extends GetxController {
  var registrationCount = 20.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>().obs;
  bool isBottenSheetShon = false;
  var doneItem = 20.obs;
  var subjectCode = "CS311";
  var subjectName = "SOFT COMPUTING ";
  var completedHours = 3;

  Padding registerRow() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Container(
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                    onPressed: () {},
                    child: const Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ));
  }

  Padding doneRegistrationRow() {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
        child: Container(
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                    onPressed: () {},
                    child: const Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ));
  }
}
