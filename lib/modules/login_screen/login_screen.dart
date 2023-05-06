import 'package:flutter/material.dart';
import 'package:practiceflutter/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();

  var formKey = GlobalKey<FormState>();

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
              child: Stack(alignment: Alignment.topCenter, children: [
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
                              tfValidator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
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
                              tfPrefixIcon: const Icon(Icons.lock),
                              tfValidator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Flexible(
                            child: mainButton(
                                buttonFunction: () {
                                  if (formKey.currentState != null) {
                                    formKey.currentState?.validate();
                                  }
                                },
                                buttonText: 'LOGIN'),
                          ),
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
                                  onPressed: () {},
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
