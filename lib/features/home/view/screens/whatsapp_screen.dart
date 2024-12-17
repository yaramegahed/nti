import 'package:flutter/material.dart';
import 'package:nti/core/style/colors.dart';

import '../../model/home_model.dart';
import '../widgt/buildbody.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: [
            const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            PopupMenuButton(
                color: Colors.black,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                        child: Text(
                      "مجموعة جديدة",
                      style: TextStyle(color: Colors.white),
                    )),
                    const PopupMenuItem(
                        child: Text(
                      "مجموعة جديدة",
                      style: TextStyle(color: Colors.white),
                    )),
                  ];
                }),
          ],
          backgroundColor: Colors.black,
          title: const Text(
            "واتساب",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: .6),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Buildbody(
                      title: list[index].title,
                      subtitle: list[index].subtitle,
                      image: list[index].image, trailing: list[index].trailing,
                    );
                  }),
            ),
            BottomNavigationBar(backgroundColor: AppColor.black,

                items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: "دردشات"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.groups,color: Colors.white,), label: "مجتمعات"),
              BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.white,), label: "مكالمات",),
            ]),
          ],
        ),
      ),
    );
  }
}

TextStyle style() {
  return const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
