import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String optionText;
  final Function myfunction;

  Option(this.optionText, this.myfunction);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextButton(
          child: Text(
            optionText,
            textAlign: TextAlign.center,
            textScaleFactor: 2,
          ),
          onPressed: () {
            myfunction(optionText);
          },
          style: TextButton.styleFrom(
              elevation: 2.0,
              backgroundColor: Colors.green,
              textStyle: TextStyle(color: Colors.black, foreground: null)),
        ),
      ),
    );
  }
}
