import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/configurations/size_config.dart';
import 'package:practiceflutter/main.dart';
import 'package:practiceflutter/shared/components/components.dart';

class LoginScreen1 extends StatefulWidget {
  LoginScreen1({Key? key})
      : super(
    key: key,
  );

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {

  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final GlobalKey _firstElementKey = GlobalKey();
  bool isPasswordShow = true;
  Widget vali = const Text('please enter your password', style: TextStyle(fontSize: 10),);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: canvasColor.withOpacity(0.9),
      body: SafeArea(
        child: Container(
          height: 400,
          width: 500,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Text('1'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('DATA'),
                Text('100'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
