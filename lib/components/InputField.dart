import "package:flutter/material.dart";
import 'package:smart_visiting_card/screens/HomePage.dart';

var color = 0xff2196f3;
var icons = [Icons.person, Icons.email, Icons.account_box];
var hintTexts = ["name", "email", "linkedinID"];

class InputField extends Padding {
  InputField(int ref, TextEditingController inputController)
      : super(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
            child: TextField(
              controller: inputController,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                icon: Icon(icons[ref]),
                errorStyle: TextStyle(),
                contentPadding: EdgeInsets.all(0),
                hintText: "Enter your " + hintTexts[ref],
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(color)),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ));
}
