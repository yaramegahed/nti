import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}
class Numbers{
  int x=0;
  Function add;
  Function min;
  Function reverse;
  Numbers({required this.add,required this.min,required this.reverse});
  printer(){
    print(x);
  }


}
