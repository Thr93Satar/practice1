import 'package:flutter/material.dart';
import 'package:practiceflutter/messenger_page.dart';

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
        primarySwatch: themecolor,
        fontFamily: 'cabin',
        scaffoldBackgroundColor: bodycolor,
      ),
      home: Messenger_page(),
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
  50: const Color.fromRGBO(72, 61, 103, .1),
  100: const Color.fromRGBO(72, 61, 103, .2),
  200: const Color.fromRGBO(72, 61, 103, .3),
  300: const Color.fromRGBO(72, 61, 103, .4),
  400: const Color.fromRGBO(72, 61, 103, .5),
  500: const Color.fromRGBO(72, 61, 103, .6),
  600: const Color.fromRGBO(72, 61, 103, .7),
  700: const Color.fromRGBO(72, 61, 103, .8),
  800: const Color.fromRGBO(72, 61, 103, .9),
  900: const Color.fromRGBO(72, 61, 103, 1),
};
MaterialColor bodycolor = MaterialColor(0xFF483D67, color);

Map<int, Color> color1 = {
  50: const Color.fromRGBO(108, 90, 170, .1),
  100: const Color.fromRGBO(108, 90, 170, .2),
  200: const Color.fromRGBO(108, 90, 170, .3),
  300: const Color.fromRGBO(108, 90, 170, .4),
  400: const Color.fromRGBO(108, 90, 170, .5),
  500: const Color.fromRGBO(108, 90, 170, .6),
  600: const Color.fromRGBO(108, 90, 170, .7),
  700: const Color.fromRGBO(108, 90, 170, .8),
  800: const Color.fromRGBO(108, 90, 170, .9),
  900: const Color.fromRGBO(108, 90, 170, 1),
};
MaterialColor themecolor = MaterialColor(0xFF6C5AAA, color1);

Map<int, Color> color2 = {
  50: const Color.fromRGBO(211, 206, 230, .1),
  100: const Color.fromRGBO(211, 206, 230, .2),
  200: const Color.fromRGBO(211, 206, 230, .3),
  300: const Color.fromRGBO(211, 206, 230, .4),
  400: const Color.fromRGBO(211, 206, 230, .5),
  500: const Color.fromRGBO(211, 206, 230, .6),
  600: const Color.fromRGBO(211, 206, 230, .7),
  700: const Color.fromRGBO(211, 206, 230, .8),
  800: const Color.fromRGBO(211, 206, 230, .9),
  900: const Color.fromRGBO(211, 206, 230, 1),
};

MaterialColor elementcolor = MaterialColor(0xFFD3CEE6, color2);
// -------------------------------------Color Swatch----------------------------
