import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = [
      {
        "icon": Icons.add,
        "action": () => setState(() {
              counter++;
            })
      },
      {
        "icon": Icons.minimize,
        "action": () => counter == 0
            ? null
            : setState(() {
                counter--;
              })
      },
      {
        "icon": Icons.refresh,
        "action": () => setState(() {
              counter = 0;
            })
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Counter",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Text(
            counter.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Numbers(
                        icon: data[index]["icon"],
                        onPressed: data[index]["action"],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: data.length))
        ],
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  const Numbers({super.key, this.onPressed, required this.icon});

  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [IconButton(onPressed: onPressed, icon: Icon(icon))],
    );
  }
}
