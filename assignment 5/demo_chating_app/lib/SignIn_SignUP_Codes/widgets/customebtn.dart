import 'package:demo_chating_app/AppColors.dart';
import 'package:flutter/material.dart';

class customebtn extends StatelessWidget {
  const customebtn({
    super.key,
    required this.btnname,
    required this.onpressed,
  });
  final String btnname;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: AppColors.background,
            foregroundColor: AppColors.white),
        onPressed: onpressed,
        child: Text(btnname),
      ),
    );
  }
}
