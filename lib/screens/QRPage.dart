// ignore_for_file: prefer_const_constructors, sort_child_properties_last
// ignore: prefer_const_literals_to_create_immutables
// ignore: prefer_interpolation_to_compose_stringss

import "package:flutter/material.dart";
import '../helpers/handleScanButtonClick.dart';
import '../components/BlueButton.dart';
import '../helpers/handleScanButtonClick.dart';
import '../helpers/handleLogout.dart';

class QRPage extends StatefulWidget {
  var linkedinID;
  QRPage(this.linkedinID);
  @override
  State<StatefulWidget> createState() {
    return MyAppState(linkedinID);
  }
}

class MyAppState extends State<QRPage> {
  @override
  var linkedinID;
  MyAppState(this.linkedinID);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(width: 20),
          actions: [
            ElevatedButton(
              onPressed: () => handleLogout(context),
              child: Icon(Icons.logout),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.transparent),
              ),
            ),
          ],
          title: Center(
            child: Text("Smart Visiting Card"),
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.camera_alt,
                size: 50,
                color: Colors.blue[600],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please open camera and scan this QR code to connect!",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              SizedBox(
                height: 60,
              ),
              Image.network(
                "https://api.qrserver.com/v1/create-qr-code/?size=250x250&data=" +
                    linkedinID,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
                child: ElevatedButton(
                  onPressed: () => handleScanButtonClick(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code),
                      SizedBox(width: 10),
                      Text("Expand your network")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 18),
                    minimumSize: Size.fromHeight(43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
