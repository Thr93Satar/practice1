import 'package:flutter/material.dart';
import 'package:practiceflutter/shared/components/components.dart';
import 'package:practiceflutter/post_data.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key} ) : super(key: key,);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  Widget vali = Text('please enter your password',style: TextStyle(fontSize: 10),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Welcome To Logino',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                  alignment: Alignment.topCenter, children: [
                // Image.network(
                //   'https://images.pexels.com/photos/16191049/pexels-photo-16191049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   fit: BoxFit.cover,
                // ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: textfield1(
                              myController: myController1,
                              tfLabelText: 'Username',
                              tfHintText: "Username",
                              tfPrefixIcon:
                                  const Icon(Icons.supervised_user_circle),
                              tfValidator: (String? username) {
                                if (username!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              }, tfKeyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Flexible(
                            child: textfield1(
                              myController: myController2,
                              tfLabelText: 'Password',
                              tfHintText: "Password",
                              tfKeyboardType: TextInputType.visiblePassword,
                              tfPrefixIcon: const Icon(Icons.lock),
                              tfSuffixIcon: isPasswordShow ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                              tfHiddenTxt: isPasswordShow,
                              isPasswordVisible: (){
                                setState(() {
                                  isPasswordShow = !isPasswordShow;
                                });
                              },
                              tfValidator: (String? password) {
                                if (password!.isEmpty) {
                                  return vali.toStringDeep();
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Flexible(child: mainButton(
                              btnFunction: () {
                            if (formKey.currentState != null) {
                              formKey.currentState?.validate();
                              postDataToBackend(myController1,myController2);
                            }
                            else{
                              print('try again in few minutes');
                            }
                          },
                              buttonText: 'Login')),
                          const SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: mainText(
                                      text: 'Don\'t have an account',
                                      fontColor: Colors.black,
                                      isUpperCase: false,
                                      fontSize: 12),
                                ),
                                Flexible(
                                    child: TextButton(
                                  onPressed: () {
                                  },
                                  child: mainText(
                                      text: 'Register',
                                      fontSize: 13,
                                      fontColor: Colors.blue.shade900),
                                )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).viewInsets.bottom,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: mainText(
                          text: 'Please Login to your account',
                          fontColor: Colors.black,
                          isUpperCase: false,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          child: Icon(
                        Icons.login_rounded,
                        size: 50,
                        color: Colors.blue,
                      ))
                    ],
                  ),
                ),
              ]),
            )));
  }
}
