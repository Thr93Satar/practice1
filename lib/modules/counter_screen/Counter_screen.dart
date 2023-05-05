import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() {
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 1 ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){
                      setState(() {
                        counter--;
                        print(counter);
                      });
                    },
                    child: Text('Minus',style: TextStyle(fontSize: 20,color: Colors.blue),)),
                SizedBox(width: 20,),
                Text('$counter',style: TextStyle(fontSize: 40,color: Colors.red),),
                SizedBox(width: 20,),
                TextButton(
                    onPressed: (){
                      setState(() {
                        counter++;
                        print(counter);
                      });
                    },
                    child: Text('Plus',style: TextStyle(fontSize: 20,color: Colors.blue),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
