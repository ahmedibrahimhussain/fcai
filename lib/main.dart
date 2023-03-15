import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/locale/locale%20settings.dart';
import 'package:untitled2/locale/locale.dart';
import 'package:untitled2/screens/first%20screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(156, 185, 189, 1.0),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(146, 184, 190, 1.0),
              elevation: 0.0),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color.fromRGBO(146, 184, 190, 1.0),
            elevation: 0.0,
          ),
          fontFamily: "Lora",
          brightness: Brightness.light),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(3, 38, 44, 1.0),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(3, 38, 44, 1.0), elevation: 0.0),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromRGBO(3, 38, 44, 1.0),
          elevation: 0.0,
        ),
        fontFamily: "Lora",
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      locale: Get.deviceLocale,
      translations: MyLocal(),
      home: FirstScreen(),
    );
  }
}
