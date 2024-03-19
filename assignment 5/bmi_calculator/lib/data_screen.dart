import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class data_screen extends StatefulWidget {
  const data_screen({super.key});

  @override
  State<data_screen> createState() => _data_screenState();
}

class _data_screenState extends State<data_screen> {
  TextStyle big_style = TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: AppColors.white);
  TextStyle small_style = TextStyle(fontSize: 14, color: AppColors.white);
  int weight = 50;
  int height = 120;
  int age = 20;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Background,
      appBar: AppBar(
        backgroundColor: AppColors.Background,
        leading: Icon(
          Icons.local_pizza_outlined,
          color: AppColors.iconcolor,
        ),
        title: Text(
          "BMI Calculator",
          style: small_style,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (isMale)
                            ? AppColors.selection
                            : AppColors.container,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: AppColors.white,
                            size: 80,
                          ),
                          Text(
                            "Male",
                            style: small_style,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          (isMale) ? AppColors.container : AppColors.selection,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: AppColors.white,
                          size: 80,
                        ),
                        Text(
                          "Female",
                          style: small_style,
                        )
                      ],
                    ),
                  ),
                )),
              ],
            )),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.container,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: small_style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: big_style,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'CM',
                          style: small_style,
                        ),
                      ],
                    ),
                    Slider(
                      min: 120,
                      max: 210,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      activeColor: AppColors.selection,
                      inactiveColor: AppColors.btncolor,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: small_style,
                          ),
                          Text(
                            "$weight",
                            style: big_style,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.btncolor,
                                  foregroundColor: AppColors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) weight--;
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.btncolor,
                                  foregroundColor: AppColors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.container,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: small_style,
                          ),
                          Text(
                            "$age",
                            style: big_style,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.btncolor,
                                  foregroundColor: AppColors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.btncolor,
                                  foregroundColor: AppColors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //calculation button
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
                  double r = weight / (height * height * 0.0001);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => resultscreen(
                        result: r,
                      ),
                    ),
                  );
                },
                child: Text("Calculate"),
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
