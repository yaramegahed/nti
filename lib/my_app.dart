import 'package:flutter/material.dart';
import 'package:nti/features/home/view/screens/home_screen.dart';
import 'package:nti/features/home/view/screens/whatsapp_screen.dart';
import 'package:nti/tasks/task2.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     themeMode: ThemeMode.system,
      home:  WhatsappScreen(),
    );
  }
}