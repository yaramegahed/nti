import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  int x=0;
  printer(){
    print(x);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.blueGrey),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
        [

          sa(onpressed: (){
          setState(() {
            x++;
          });
          setState(() {
            x+=1;
          });
        }),


        ],),
      ),

    );


  }

}

Widget sa ({required void Function()? onpressed}){
 return IconButton(onPressed: onpressed,icon: Text("data"),);

}
