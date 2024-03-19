import 'package:flutter/material.dart';

class imageOfhome extends StatelessWidget {
  const imageOfhome({
    super.key,
    required this.bordercolor,
    required this.homeimage,
  });
  final Color bordercolor;
  final ImageProvider homeimage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 65,
      backgroundColor: bordercolor,
      child: CircleAvatar(
        radius: 60,
        backgroundImage: homeimage,
      ),
    );
  }
}
