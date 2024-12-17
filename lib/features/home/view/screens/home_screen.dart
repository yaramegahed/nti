import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Facebook",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        backgroundColor: Colors.white12,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.black,
            size: 25,)),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.black,
                size: 25,
              )),


        ],
      ),
      body: SafeArea(child: Column()),
    );
  }
}
