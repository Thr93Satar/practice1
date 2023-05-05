import 'package:flutter/material.dart';
import 'package:practiceflutter/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();

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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
              children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: mainText(
                      text: 'Please Login to your account',
                      fontColor: Colors.black,
                      isUpperCase: false,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Flexible(
                    child: textfield1(
                      myController: myController,
                      tfLabelText: 'Username',
                      tfHintText: "Username",
                      tfPrefixIcon: const Icon(Icons.supervised_user_circle),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: textfield1(
                      myController: myController,
                      tfLabelText: 'Password',
                      tfHintText: "Password",
                      tfPrefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: mainButton(
                        buttonFunction: (buttonFunction) {}, buttonText: 'LOGIN'),
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
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
