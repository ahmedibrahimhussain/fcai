import 'package:flutter/material.dart';
import 'package:get/get.dart.';
import 'package:untitled2/locale/locale%20settings.dart';
import 'package:untitled2/models/models.dart';
import 'package:untitled2/screens/Done%20Screen.dart';
import 'package:untitled2/screens/Top%20students%20screen.dart';
import 'package:untitled2/screens/complaints%20screen.dart';
import 'package:untitled2/screens/first%20screen.dart';
import 'package:untitled2/screens/grade%20statement%20screeen.dart';
import 'package:untitled2/screens/result%20screen.dart';

import 'SubjectRegistration screen.dart';
import 'finance Screen.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "FCAI BSU",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 25,
          childAspectRatio: 1.30,
          children: [
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            GestureDetector(
              child: defaultContainerHomePage(text: "Registration".tr),
              onTap: () {
                Get.to(SubjectRegistrationScreen());
              },
            ),
            GestureDetector(
                child: defaultContainerHomePage(text: "Result".tr),
                onTap: () {
                  Get.to(ResultScreen());
                }),
            GestureDetector(
                child: defaultContainerHomePage(text: "Top Student".tr),
                onTap: () {
                  {
                    Get.to(TopStudentsScreen());
                  }
                }),
            GestureDetector(
                child: defaultContainerHomePage(text: "Done".tr),
                onTap: () {
                  {
                    Get.to(DoneScreen());
                  }
                }),
            GestureDetector(
                child: defaultContainerHomePage(text: "Grade Stater".tr),
                onTap: () {
                  {
                    Get.to(GradeStatementScreen());
                  }
                }),
            GestureDetector(
                child: defaultContainerHomePage(text: " finance ".tr),
                onTap: () {
                  {
                    Get.to(FinanceScreen());
                  }
                }),
          ],
        ),
      ),
      drawerEdgeDragWidth: 50,
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('image/logo.png'),
              decoration: BoxDecoration(
                  gradient: Get.isDarkMode
                      ? const LinearGradient(colors: [
                          Color.fromRGBO(18, 54, 59, 1.0),
                          Color.fromRGBO(3, 38, 44, 1.0),
                          Color.fromRGBO(22, 63, 70, 1.0),
                          Color.fromRGBO(42, 148, 157, 1.0),
                        ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                      : const LinearGradient(
                          colors: [
                              Color.fromRGBO(156, 185, 189, 1.0),
                              Color.fromRGBO(23, 74, 79, 1.0),
                              Color.fromRGBO(63, 139, 141, 1.0),
                              Color.fromRGBO(42, 148, 157, 1.0),
                            ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft)),
              accountName: const Text("ahmed ibrahim"),
              accountEmail: const Text("ahmed ibrahim hussain@gmail.com"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 40,
              child: TextButton.icon(
                onPressed: () {
                  controllerLang.changeLange("en");
                },
                label: const Text("change to english language",
                    style: TextStyle(color: Colors.white)),
                icon: const Icon(Icons.language),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 40,
              child: TextButton.icon(
                onPressed: () {
                  controllerLang.changeLange("ar");
                },
                label: const Text("للتحويل للغه العربيه",
                    style: TextStyle(color: Colors.white)),
                icon: const Icon(Icons.language_sharp),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 40,
              child: TextButton.icon(
                onPressed: () {
                  Get.to(ComplaintsScreen());
                },
                label: Text('Complaints'.tr,
                    style: const TextStyle(color: Colors.white)),
                icon: const Icon(Icons.file_copy),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 40,
              child: TextButton.icon(
                onPressed: () {},
                label: Text('Collage List'.tr,
                    style: const TextStyle(color: Colors.white)),
                icon: const Icon(Icons.list_alt),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 40,
              child: TextButton.icon(
                onPressed: () {
                  Get.to(FirstScreen());
                },
                label: Text('log out'.tr,
                    style: const TextStyle(color: Colors.white)),
                icon: const Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
