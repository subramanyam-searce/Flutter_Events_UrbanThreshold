import "package:flutter/material.dart";
import '../components//InputField.dart';
import "../components/BlueButton.dart";
import '../helpers/handleRegisterButtonClick.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class TextFieldControllers {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController linkedinID = new TextEditingController();
}

TextFieldControllers inputController = new TextFieldControllers();

class MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("Smart Visiting Card"),
        )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/logo.png", scale: 0.5),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "PartnerConnect",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 25)),
                  InputField(0, inputController.name),
                  InputField(1, inputController.email),
                  InputField(2, inputController.linkedinID),
                  BlueButton(
                      () => handleRegisterButtonClick(context, inputController),
                      "Register"),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        ));
  }
}
