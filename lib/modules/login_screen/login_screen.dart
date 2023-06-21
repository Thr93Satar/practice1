import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/configurations/size_config.dart';
import 'package:practiceflutter/main.dart';
import 'package:practiceflutter/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final GlobalKey _firstElementKey = GlobalKey();
  bool isPasswordShow = true;
  Widget vali = const Text(
    'please enter your password',
    style: TextStyle(fontSize: 10),
  );
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: canvasColor.withOpacity(0.9),
        body: SafeArea(
          top: true,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: SizeConfig.screenHeight),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast,
                  parent: AlwaysScrollableScrollPhysics()),
              padding: EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            key: _firstElementKey,
                            child: mainText(
                              text: 'Hello Again!',
                              fontColor: Colors.black,
                              isUpperCase: false,
                            ),
                          ),
                          secondText(
                            text: 'you have been missed',
                            fontColor: Colors.black,
                            isUpperCase: false,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 10,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 35,
                      width: SizeConfig.blockSizeHorizontal * 100,
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textfield1(
                              myController: myController1,
                              tfLabelText: 'Username',
                              tfHintText: 'Username',
                              tfPrefixIcon: const Icon(Icons.person),
                              tfValidator: (String? value) {
                                if (value!.isEmpty) {
                                  return ('Username field must not be empty');
                                }
                              },
                              tfKeyboardType: TextInputType.name,
                            ),
                            textfield1(
                              myController: myController2,
                              tfLabelText: 'Password',
                              tfHintText: "Password",
                              tfKeyboardType: TextInputType.visiblePassword,
                              tfPrefixIcon: const Icon(Icons.lock),
                              tfSuffixIcon: isPasswordShow
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              tfHiddenTxt: isPasswordShow,
                              isPasswordVisible: () {
                                setState(() {
                                  isPasswordShow = !isPasswordShow;
                                });
                              },
                              tfValidator: (String? password) {
                                if (password!.isEmpty) {
                                  return ('Password field must not be empty');
                                }
                                return null;
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical * 3,
                                  child: btnText(
                                      text: 'Recover your password',
                                      fontColor: Colors.black,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3),
                                )
                              ],
                            ),
                            SizedBox(height: SizeConfig.blockSizeVertical * 1,),
                            mainButton(
                                btnFunction: () {
                                  if (formKey.currentState != null) {
                                    if (formKey.currentState!.validate()) {
                                      print('hellllllllllllllllllo');
                                    }
                                  }
                                },
                                buttonText: 'Login',
                                buttonColor: Colors.deepOrangeAccent),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 4,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                      width: SizeConfig.blockSizeHorizontal * 100,
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 0.2,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.white.withOpacity(0.1),
                                Colors.black.withOpacity(0.6)
                              ])),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 2,
                          ),
                          Flexible(
                            child: Container(
                              color: canvasColor.withOpacity(0.0),
                              child: Text(
                                'Or continue with',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 2,
                          ),
                          Flexible(
                            child: RotatedBox(
                              quarterTurns: 90,
                              child: Container(
                                height: SizeConfig.blockSizeVertical * 0.2,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                  Colors.white.withOpacity(0.1),
                                  Colors.black.withOpacity(0.6)
                                ])),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 4,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 10,
                      width: SizeConfig.blockSizeHorizontal * 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical * 8,
                            width: SizeConfig.blockSizeHorizontal * 16,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.g_mobiledata,
                                  size: SizeConfig.blockSizeHorizontal * 10,
                                )),
                          ),
                          Container(
                            height: SizeConfig.blockSizeVertical * 8,
                            width: SizeConfig.blockSizeHorizontal * 16,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.g_mobiledata,
                                  size: SizeConfig.blockSizeHorizontal * 10,
                                )),
                          ),
                          Container(
                            height: SizeConfig.blockSizeVertical * 8,
                            width: SizeConfig.blockSizeHorizontal * 16,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.g_mobiledata,
                                  size: SizeConfig.blockSizeHorizontal * 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 4,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeVertical * 2,
                            child: btnText(
                                text: 'Dont have an account yet ?',
                                fontColor: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal * 3),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 3,
                          ),
                          SizedBox(
                              height: SizeConfig.blockSizeVertical * 3,
                              child: btnText(
                                  text: 'Register',
                                  fontColor: Colors.deepOrange,
                                  fontSize: SizeConfig.blockSizeHorizontal * 4))
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
