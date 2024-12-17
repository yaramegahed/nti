import 'package:flutter/material.dart';
import 'package:nti/core/style/colors.dart';
import 'package:nti/features/home/view/screens/whatsapp_screen.dart';

class Buildbody extends StatelessWidget {
  const Buildbody(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image, required this.trailing});

  final String title,subtitle,image,trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      trailing: Text(trailing,style: style().copyWith(color: AppColor.grey),),
      subtitle: Text(subtitle,style: style().copyWith(color: Colors.grey),),
      title: Text(title,style: style(),),
      leading: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(image),
    ));
  }
}
