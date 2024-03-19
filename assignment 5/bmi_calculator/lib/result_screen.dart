import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class resultscreen extends StatelessWidget {
  final double result;
  const resultscreen({super.key, required this.result});

  String status(double r) {
    if (r < 16) {
      return "Severe Thinness";
    } else if (r >= 16 && r <= 17) {
      return "Moderate Thinness";
    } else if (r >= 17 && r <= 18.5) {
      return "Mild Thinness";
    } else if (r >= 18.5 && r <= 25) {
      return "Normal";
    } else if (r >= 25 && r <= 30) {
      return "OverWeight";
    } else if (r >= 30 && r <= 35) {
      return "Obese Class 1";
    } else if (r >= 35 && r <= 40) {
      return "Obese Class 2";
    } else if (r > 40) {
      return "Obese Class 3";
    } else {
      return 'error';
    }
  }

  String advice(String s) {
    if (s == "Severe Thinness") {
      return "good luck you're Severe Thinness Please eat alot";
    } else if (s == "Moderate Thinness") {
      return "good luck you're Moderate Thinness you have to eat more";
    } else if (s == "Mild Thinness") {
      return "good luck you're Mild Thinness you have to take care of your healthy";
    } else if (s == "Normal") {
      return "good luck you're Normal you're prefect";
    } else if (s == "OverWeight") {
      return "good luck you're OverWeight you are about to be normal";
    } else if (s == "Obese Class 1") {
      return "good luck you're Obese Class 1 please work hard";
    } else if (s == "Obese Class 2") {
      return "good luck you're Obese Class 2 you have to eat less";
    } else if (s == "Obese Class 3") {
      return "good luck you're Obese Class 3 your are in danger Please see the doctor";
    } else {
      return 'error';
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle big_style = TextStyle(fontSize: 80, color: AppColors.white);
    TextStyle small_style = TextStyle(fontSize: 14, color: AppColors.white);
    TextStyle normal_style = TextStyle(fontSize: 24, color: AppColors.white);
    return Scaffold(
      backgroundColor: AppColors.Background,
      appBar: AppBar(
        backgroundColor: AppColors.Background,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "Your result : ",
                style: normal_style,
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                margin: EdgeInsets.all(5),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.container,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        status(result),
                        style: small_style,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        result.toStringAsFixed(2),
                        style: big_style,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        advice(status(result)),
                        style: small_style,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.selection,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Re-Calculate"),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
