import 'package:flutter/material.dart';
import 'package:practiceflutter/custom_bot_nav.dart';
import 'package:practiceflutter/modules/login_screen/login_screen.dart';
import 'package:practiceflutter/modules/login_screen/rubish.dart';
import 'modules/bmi_screen/bmi_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.red
      ),
      home: LoginScreen(),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
     );
  }
// -------------------------------------Color Swatch----------------------------

Map<int, Color> color = {
  50: const Color.fromRGBO(255, 255, 255, .1),
  100: const Color.fromRGBO(255, 255, 255, .2),
  200: const Color.fromRGBO(255, 255, 255, .3),
  300: const Color.fromRGBO(255, 255, 255, .4),
  400: const Color.fromRGBO(255, 255, 255, .5),
  500: const Color.fromRGBO(255, 255, 255, .6),
  600: const Color.fromRGBO(255, 255, 255, .7),
  700: const Color.fromRGBO(255, 255, 255, .8),
  800: const Color.fromRGBO(255, 255, 255, .9),
  900: const Color.fromRGBO(255, 255, 255, 1),
};
MaterialColor canvasColor = MaterialColor(0xFFffffff, color);

Map<int, Color> color1 = {
  50: const Color.fromRGBO(70, 90, 170, .1),
  100: const Color.fromRGBO(70, 90, 170, .2),
  200: const Color.fromRGBO(70, 90, 170, .3),
  300: const Color.fromRGBO(70, 90, 170, .4),
  400: const Color.fromRGBO(70, 90, 170, .5),
  500: const Color.fromRGBO(70, 90, 170, .6),
  600: const Color.fromRGBO(70, 90, 170, .7),
  700: const Color.fromRGBO(70, 90, 170, .8),
  800: const Color.fromRGBO(70, 90, 170, .9),
  900: const Color.fromRGBO(70, 90, 170, 1),
};
MaterialColor themecolor = MaterialColor(0xFF303062, color1);

Map<int, Color> color2 = {
  50: const Color.fromRGBO(5, 206, 230, .1),
  100: const Color.fromRGBO(5, 206, 230, .2),
  200: const Color.fromRGBO(5, 206, 230, .3),
  300: const Color.fromRGBO(5, 206, 230, .4),
  400: const Color.fromRGBO(5, 206, 230, .5),
  500: const Color.fromRGBO(5, 206, 230, .6),
  600: const Color.fromRGBO(5, 206, 230, .7),
  700: const Color.fromRGBO(5, 206, 230, .8),
  800: const Color.fromRGBO(5, 206, 230, .9),
  900: const Color.fromRGBO(5, 206, 230, 1),
};

MaterialColor elementcolor = MaterialColor(0xFF006edb, color2);
MaterialColor element1color = MaterialColor(0xFFdfdfdf, color2);

// -------------------------------------Color Swatch----------------------------
