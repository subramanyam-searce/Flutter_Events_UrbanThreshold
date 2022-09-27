import 'package:flutter/material.dart';
import '../screens/WelcomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void handleLogout(context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => WelcomePage()));
}
