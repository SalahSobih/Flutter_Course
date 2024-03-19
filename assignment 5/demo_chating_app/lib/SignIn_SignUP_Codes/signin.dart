import 'package:demo_chating_app/AppColors.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/signup.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/customebtn.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/imageofhome.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/textfield.dart';
import 'package:demo_chating_app/chats_section_code/chating_view.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageOfhome(
                  bordercolor: AppColors.hintTextUp,
                  homeimage: const NetworkImage("https://shorturl.at/kNTU3"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Login to your Account",
                  style: TextStyle(
                      fontSize: 25,
                      color: AppColors.background,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 35,
                ),
                const SizedBox(
                  height: 15,
                ),
                const textfied(
                  label: "Email",
                  prefix: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 15,
                ),
                textfied(
                  ispassword: true,
                  label: "Password",
                  prefix: const Icon(Icons.lock),
                  surfix: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_rounded)),
                ),
                const SizedBox(
                  height: 5,
                ),
                customebtn(
                  btnname: "Login",
                  onpressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const chating_view()));
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I don't have an account",
                      style: TextStyle(color: AppColors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const signup()));
                      },
                      child: const Text("Create one"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
