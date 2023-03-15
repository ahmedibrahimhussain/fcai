import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
        {double width = double.infinity,
        double radius = 16,
        double height = 60,
        Color color = Colors.black26,
        required Function()? onPressed,
        required String text}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );


Widget defaultFormField(
    {double radius = 16,
    required TextEditingController controller,
    required TextInputType type,
     String? Function(String?)? validator,
    required String labelText,
    required IconData PrefixIcon,
      int maxLines =1,
    IconData? suffixIcon,
    bool obscure = false}) {
  return TextFormField(
    maxLines: maxLines,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        prefixIcon: Icon(PrefixIcon),
        suffixIcon: Icon(suffixIcon),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )),
    controller: controller,
    keyboardType: type,
    obscureText: obscure,
    validator: validator,
  );
}


Widget defaultContainerHomePage({
  double height = 200,
  double width = 200,
  Color color = Colors.black26,
  double radius = 16,
  required String text,
}) {
  return Container(
    alignment: Alignment.center,
    width: width,
    height: height,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(color: Colors.black26, offset: Offset(10, 10))
      ],
      color: color,
      border: Border.all(color: Colors.black26),
      borderRadius: BorderRadius.circular(radius),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  );
}


var id = "1";
var studentName = "Ahmed Ibrahim Hussain";
var studentCode = 000000;
var departmentName = "CS";

Padding topStudentsRow() {
  return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Text(
              id,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                studentName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "$studentCode",
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
              departmentName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ));
}
