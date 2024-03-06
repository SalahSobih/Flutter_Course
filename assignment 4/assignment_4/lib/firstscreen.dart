import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.yellowAccent[700],
        ),
        centerTitle: true,
        title: Text(
          'My First App',
          style: TextStyle(
              color: Colors.yellowAccent[700],
              fontSize: 23,
              fontWeight: FontWeight.normal),
        ),
        actions: [
          Icon(
            Icons.settings,
            color: Colors.yellowAccent[700],
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/salah.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Salah Soliman",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellowAccent[700],
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "@facebook.com/salah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.white,
                  iconSize: 30,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.snapchat_sharp,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "@snapchat.com/salah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.white,
                  iconSize: 30,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.telegram,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "@telegram.com/salah",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.white,
                  iconSize: 30,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.tiktok,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "@tiktok.com/salahsol",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  color: Colors.white,
                  iconSize: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
