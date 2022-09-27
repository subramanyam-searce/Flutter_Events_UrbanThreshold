import 'package:flutter/material.dart';
import '../screens/QRPage.dart';
import 'package:linkedin_login/linkedin_login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:shared_preferences/shared_preferences.dart";

final String redirectUrl =
    'https://www.linkedin.com/developers/tools/oauth/redirect';
final String clientId = '779r8utr8ar1tw';
final String clientSecret = '3q6V18uO4PLwmV8x';

void handleRegisterButtonClick(context, inputController) async {
  final prefs = await SharedPreferences.getInstance();

  var name = inputController.name.text;
  var email = inputController.email.text;
  var linkedinID = inputController.linkedinID.text;
  await prefs.setString('name', name);
  await prefs.setString('email', email);
  await prefs.setString('linkedinID', linkedinID);
  bool emailValid =
      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[gmail]+.[com]+")
          .hasMatch(email);

  if (name != "" && emailValid != false && linkedinID != "") {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LinkedInUserWidget(
            redirectUrl: redirectUrl,
            clientId: clientId,
            clientSecret: clientSecret,
            onGetUserProfile: (UserSucceededAction linkedInUser) {
              print('Access token ${linkedInUser.user.token.accessToken}');
              print(linkedInUser);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QRPage(linkedinID)));
            },
            onError: (UserFailedAction e) {
              print('Error: ${e.toString()}');
            },
          ),
        ));
  } else {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Invalid Details!'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text(
                        'Please ensure that all the details are filled and the email you have entered is valid.'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('BACK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }
  print(inputController.name.text);
  print("test");
}
