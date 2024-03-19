import 'package:demo_chating_app/AppColors.dart';
import 'package:flutter/material.dart';

class chat_data extends StatelessWidget {
  const chat_data({
    super.key, required this.image, required this.name, required this.msg, required this.time, required this.ontapfn,
  });

  final String image; 
  final String name; 
  final String msg;
  final String time; 
  final Function() ontapfn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontapfn,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        msg,
        style: TextStyle(
          color: AppColors.hintTextUp,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        time,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
