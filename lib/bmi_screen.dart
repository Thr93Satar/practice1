import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  String height= '0';
  double counter=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator', style: TextStyle(fontSize: 20, color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 170,
                decoration: const BoxDecoration(
                  color: const Color(0xff34305c),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.male,size: 80,color: Colors.blue,),
                    Text('Male',style: TextStyle(fontSize: 25,color: Colors.white),),
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              Container(
                height: 200,
                width: 170,
                decoration: const BoxDecoration(
                  color: const Color(0xff34305c),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.female,size: 80,color: Colors.pinkAccent,),
                    Text('Female',style: TextStyle(fontSize: 25,color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 360,
                decoration: const BoxDecoration(
                  color: const Color(0xff34305c),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text('Height', style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('$height',style: const TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Slider(
                      inactiveColor: Colors.white,
                      activeColor: Colors.red,
                      value: counter,
                      min: 0.0,
                      max: 100.0,
                      onChanged: (double value){
                        setState(() {
                          counter = value;
                          height = '${counter.round()} cm';
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(),
          Row(
            children: [
              const SizedBox(),
              Column(),
              const SizedBox(),
              Column(),
              const SizedBox(),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
