import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/QrScanner.dart';

void handleScanButtonClick(context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('name');
  await prefs.remove('email');
  await prefs.remove('linkedinID');
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => QRCodeScanner()));
}
