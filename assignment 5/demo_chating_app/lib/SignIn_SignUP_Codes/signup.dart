import 'package:demo_chating_app/AppColors.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/signin.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/customebtn.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/imageofhome.dart';
import 'package:demo_chating_app/SignIn_SignUP_Codes/widgets/textfield.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool hidepass = true;
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
                  bordercolor: AppColors.hintTextDown,
                  homeimage: const NetworkImage("https://shorturl.at/wJRU8"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Create New Account",
                  style: TextStyle(
                      fontSize: 25,
                      color: AppColors.background,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 35,
                ),
                const textfied(
                  label: "Name",
                  prefix: Icon(Icons.person),
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
                  ispassword: hidepass,
                  label: "Password",
                  prefix: const Icon(Icons.lock),
                  surfix: IconButton(
                      onPressed: () {
                        setState(() {
                          hidepass = !hidepass;
                        });
                      },
                      icon: (hidepass)
                          ? const Icon(Icons.visibility_off_rounded)
                          : const Icon(Icons.remove_red_eye_rounded)),
                ),
                const SizedBox(
                  height: 5,
                ),
                customebtn(
                  btnname: "Register",
                  onpressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const signin()));
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I Already have an account",
                      style: TextStyle(color: AppColors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const signin()));
                      },
                      child: const Text("Login now"),
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
