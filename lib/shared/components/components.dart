import 'dart:ffi';

import 'package:flutter/material.dart';

// Text Section ----------------------------------1

Widget mainText(
        {required String text,
        Color fontColor = Colors.white,
        double fontSize = 20,
        bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(fontSize: fontSize, color: fontColor),
    );

Widget btnText(
        {required String text,
        Color fontColor = Colors.white,
        double fontSize = 15,
        bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(fontSize: fontSize, color: fontColor),
    );
// Buttons Section -------------------------------2

Widget mainButton({
  required Function() btnFunction,
  required String buttonText,
  double buttonWidth = 200.0,
  double buttonHeight = 50.0,
  Color buttonColor = Colors.blue,
  double buttonRadius = 6.0,
}) =>
    Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonRadius),
        color: buttonColor,
      ),
      child: MaterialButton(
          onPressed: btnFunction,
          child: btnText(text: buttonText)),
    );

// TextFields Section ------------------------------3

Widget textfield1({
  required TextEditingController myController,
  double tfWidth = double.infinity,
  double tfHeight = 50.0,
  double tfBorderRadius = 5.0,
  double tfContentPadding = 10.0,
  Color tfColor = Colors.white54,
  required String tfLabelText,
  required String tfHintText,
  required Icon tfPrefixIcon,
  required String? Function(String? value) tfValidator,
  Icon? tfSuffixIcon,
  bool tfHiddenTxt = false,
  Void? Function()? isPasswordVisible,
  required TextInputType tfKeyboardType,
}) =>
    SizedBox(
      width: tfWidth,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(tfContentPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(tfBorderRadius),
          ),
          hintText: tfHintText,
          labelText: tfLabelText,
          prefixIcon: tfPrefixIcon,
          suffixIcon: tfSuffixIcon != null ? IconButton(onPressed: isPasswordVisible, icon: tfSuffixIcon) : null,
        ),
        controller: myController,
        validator: tfValidator,
        obscureText: tfHiddenTxt,
        keyboardType: tfKeyboardType,
      ),
    );
