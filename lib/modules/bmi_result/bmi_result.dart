import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  final double counter;
  final bool isMale;
  final int age;

  const BmiResult({super.key,
    required this.counter, required this.isMale, required this.age
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result",style: TextStyle(fontSize: 25),),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('$counter',style: const TextStyle(fontSize: 25, color: Colors.white),),
                Text('$isMale',style: const TextStyle(fontSize: 25, color: Colors.white),),
                Text('$age',style: const TextStyle(fontSize: 25, color: Colors.white),),
              ],
            ),
          )
      ),
    );
  }
}
