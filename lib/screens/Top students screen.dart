import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/controller/Top%20Students%20Controller.dart';

class TopStudentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        title: Text(
          "Top Student".tr,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,

          height: MediaQuery.of(context).size.height * .9,
          child: GetX<TopStudentsController>(
            init: TopStudentsController(),
            builder: (controller) {
              return Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    controller.men.value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black26,
                        ),
                        child: ListView.separated(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return controller.topStudentsRow();
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 5,
                              color: Colors.black,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Text(
                    controller.women.value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black26,
                        ),
                        child: ListView.separated(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return controller.topStudentsRow();
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 5,
                              color: Colors.black,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
