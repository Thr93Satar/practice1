import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:practiceflutter/configurations/size_config.dart';

// Text Section ----------------------------------1

Widget mainText(
        {required String text,
        Color fontColor = Colors.white,
        bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
          fontSize: SizeConfig.blockSizeHorizontal * 7,
          color: fontColor
      ),
    );

Widget secondText(
    {required String text,
      Color fontColor = Colors.white,
      bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
          fontSize: SizeConfig.blockSizeHorizontal * 5, color: fontColor),
    );


Widget thirdText(
    {required String text,
      Color fontColor = Colors.white,
      bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
          fontSize: SizeConfig.blockSizeHorizontal * 4, color: fontColor),
    );

Widget forthText(
    {required String text,
      Color fontColor = Colors.white,
      bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
          fontSize: SizeConfig.blockSizeHorizontal * 3, color: fontColor),
    );

Widget btnText(
        {
        required String text,
        required Color fontColor,
        required double fontSize,
        bool isUpperCase = true}) =>
    Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
          fontSize: fontSize, color: fontColor),
    );



// Buttons Section -------------------------------2

Widget mainButton({
  required Function() btnFunction,
  required String buttonText,
  required Color buttonColor,
}) =>
    Container(
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 2),
        color: buttonColor,
      ),
      child: MaterialButton(
          onPressed: btnFunction,
          child: thirdText(text: buttonText)),
    );

// TextFields Section ------------------------------3

Widget textfield1({
  required TextEditingController myController,
  required TextInputType tfKeyboardType,
  required String tfLabelText,
  required String tfHintText,
  required Icon tfPrefixIcon,
  required String? Function(String? value) tfValidator,
  Icon? tfSuffixIcon,
  bool tfHiddenTxt = false,
  Void? Function()? isPasswordVisible,
  Color tfColor = Colors.white54,
}) =>
    SizedBox(
      height: SizeConfig.blockSizeVertical * 10,
      width: SizeConfig.blockSizeHorizontal * 100,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: tfColor,
          contentPadding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeHorizontal * 6),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal * 2),),
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
