import 'package:flutter/material.dart';

class Text_Button extends StatelessWidget {
  final String text;
  final Function selecthandler;
  const Text_Button(this.text, this.selecthandler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60.0,
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: () => selecthandler(text),
          style: TextButton.styleFrom(
            elevation: 1.0,
          ),
        ),
      ),
    );
  }
}
