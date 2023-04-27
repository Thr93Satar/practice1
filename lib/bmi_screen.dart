import 'dart:async';

import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  List<Widget> listOfWidgets = [];
  List<bool> myList = <bool>[true, false];
  late Timer _timer;
  late Timer _timer1;
  late Timer _timer2;
  late Timer _timer3;
  String height = '0';
  double counter = 128.0;
  int weight = 0;
  int age = 0;
  Color maleColor = const Color(0xff34305c);
  Color femaColor = const Color(0xff34305c);
  bool isMale = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              isMale ? Colors.white30 : const Color(0xff34305c),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.blue,
                            ),
                            Text(
                              'Male',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              isMale ? const Color(0xff34305c) : Colors.white30,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.pinkAccent,
                            ),
                            Text(
                              'Female',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff34305c),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Height',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(
                        '${counter.round()}',
                        style: const TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      inactiveColor: Colors.white,
                      activeColor: Colors.red,
                      value: counter,
                      min: 80.0,
                      max: 280.0,
                      onChanged: (double value) {
                        setState(() {
                          counter = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff34305c),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueAccent),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 35, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTapDown: (TapDownDetails details) {
                                  _timer = Timer.periodic(
                                      const Duration(milliseconds: 100), (t) {
                                    setState(() {
                                      if (weight != 0) {
                                        weight -=10;
                                      }
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  _timer.cancel();
                                },
                                onTapCancel: () {
                                  _timer.cancel();
                                },
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight != 0) {
                                        weight -=10;
                                      }
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Icon(
                                      Icons.minimize_rounded,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTapDown: (TapDownDetails details) {
                                  _timer1 = Timer.periodic(
                                      const Duration(milliseconds: 100), (t) {
                                    setState(() {
                                      weight += 10;
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  _timer1.cancel();
                                },
                                onTapCancel: () {
                                  _timer1.cancel();
                                },
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight+=10;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff34305c),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueAccent),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 35, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                onTapDown: (TapDownDetails details) {
                                  _timer2 = Timer.periodic(
                                      const Duration(milliseconds: 100), (t) {
                                    setState(() {
                                      if (age != 0) {
                                        age--;
                                      }
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  _timer2.cancel();
                                },
                                onTapCancel: () {
                                  _timer2.cancel();
                                },
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Icon(
                                      Icons.minimize_rounded,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                onTapDown: (TapDownDetails details) {
                                  _timer3 = Timer.periodic(
                                      const Duration(milliseconds: 100), (t) {
                                    setState(() {
                                      age++;
                                    });
                                  });
                                },
                                onTapUp: (TapUpDetails details) {
                                  _timer3.cancel();
                                },
                                onTapCancel: () {
                                  _timer3.cancel();
                                },
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: const Text(
                'Calculate',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
