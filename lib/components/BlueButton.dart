import "package:flutter/material.dart";

class BlueButton extends Padding {
  BlueButton(buttonClickHandler, buttonText)
      : super(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
          child: ElevatedButton(
            onPressed: buttonClickHandler,
            child: Text(buttonText),
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(fontSize: 18),
              minimumSize: Size.fromHeight(43),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );
}
