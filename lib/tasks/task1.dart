import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Task extends StatelessWidget {
  Task({super.key});

  List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  @override
  Widget build(BuildContext context) {
    for (int i=0 ; i<=20 ;i++){
      letters.add(i.toString());
    }

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(children: [
                  Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 12),
                          itemCount: letters.length,
                          itemBuilder: (context, index) {
                            return Yara(
                              name: letters[index],
                              index: index ,
                            );
                          }))
                ]))));
  }
}

class Yara extends StatelessWidget {
  final String name;
  final int index;

  const Yara({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xff332329 * (index+4)),
            borderRadius: BorderRadius.circular(24)),
        child: Text(name,
            style: const TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold)));
  }
}
