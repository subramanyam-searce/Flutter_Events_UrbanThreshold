import "package:flutter/material.dart";
import 'screens/WelcomePage.dart';
// import 'screens/QrScanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/QRPage.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  var linkedinID = await prefs.getString('linkedinID');
  print(linkedinID);
  var FirstScreen;
  if (linkedinID == null)
    FirstScreen = WelcomePage();
  else
    FirstScreen = QRPage(linkedinID);
  runApp(MaterialApp(title: "Smart Visiting Card", home: FirstScreen));
}
