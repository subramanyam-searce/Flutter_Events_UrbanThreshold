import "package:flutter/material.dart";
import '../screens/HomePage.dart';
import '../components/BlueButton.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomePageState();
  }
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          child: Center(
              child: Column(
            children: [
              Image.asset("assets/images/logo.png", scale: 0.5),
              SizedBox(height: 35),
              Text(
                "Welcome!",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              SizedBox(height: 20),
              Text(
                "Stay updated on your professional world",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 60,
              ),
              Text("New to Partnerconnect?"),
              SizedBox(
                height: 5,
              ),
              BlueButton(
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  "Get Started"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ))),
    );
  }
}
