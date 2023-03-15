import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: Get.isDarkMode
        //           ? const LinearGradient(colors: [
        //         Color.fromRGBO(18, 54, 59, 1.0),
        //         Color.fromRGBO(3, 38, 44, 1.0),
        //         Color.fromRGBO(22, 63, 70, 1.0),
        //         Color.fromRGBO(42, 148, 157, 1.0),
        //       ], begin: Alignment.topRight, end: Alignment.bottomLeft)
        //           : const LinearGradient(colors: [
        //         Color.fromRGBO(156, 185, 189, 1.0),
        //         Color.fromRGBO(23, 74, 79, 1.0),
        //         Color.fromRGBO(63, 139, 141, 1.0),
        //         Color.fromRGBO(42, 148, 157, 1.0),
        //       ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        // ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        title: const Text(
          "Finance",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

      ),
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: Get.isDarkMode
        //         ? const LinearGradient(
        //         colors: [
        //           Color.fromRGBO(18, 54, 59, 1.0),
        //           Color.fromRGBO(3, 38, 44, 1.0),
        //           Color.fromRGBO(22, 63, 70, 1.0),
        //           Color.fromRGBO(42, 148, 157, 1.0),
        //         ], begin: Alignment.topRight, end: Alignment.bottomLeft)
        //         : const LinearGradient(
        //         colors: [
        //           Color.fromRGBO(156, 185, 189, 1.0),
        //           Color.fromRGBO(23, 74, 79, 1.0),
        //           Color.fromRGBO(63, 139, 141, 1.0),
        //           Color.fromRGBO(42, 148, 157, 1.0),
        //         ], begin: Alignment.topRight, end: Alignment.bottomLeft)),

      ),
    );
  }
}
