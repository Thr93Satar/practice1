import 'package:flutter/material.dart';

class Messenger_page extends StatelessWidget {
  const Messenger_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Messenger'),
      ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.white,
              )
            ],
          ),
        ),
    );
  }
}
