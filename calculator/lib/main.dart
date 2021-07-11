import 'package:flutter/material.dart';
import 'text_button.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Calculator",
      home: Calculator(),
    ),
  );
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input1 = "";
  String input2 = "";
  bool input = false;
  String operation = "";
  num result = 0;

  String Delete(String str) {
    if (str.length > 0) {
      str = str.substring(0, str.length - 1);
    }
    return str;
  }

  void _pushBackInput(String number) {
    setState(() {
      if (input1 == "") {
        input1 = input1 + number;
        input = true;
      } else {
        input2 = input2 + number;
      }
    });
  }

  void Addition(String text) {
    setState(() {
      if (input2 == "") operation = "";
      if (input) {
        result = (input1 + operation + input2).interpret();
        input1 = result.toString();
        input2 = "";
        operation = " + ";
      } else {
        operation = "";
      }
    });
  }

  void Substraction(String text) {
    setState(() {
      if (input2 == "") operation = "";
      if (input) {
        result = (input1 + operation + input2).interpret();
        input1 = result.toString();
        input2 = "";
        operation = " - ";
      } else {
        operation = "";
      }
    });
  }

  void Multiplication(String text) {
    setState(() {
      if (input2 == "") operation = "";
      if (input) {
        result = (input1 + operation + input2).interpret();
        input1 = result.toString();
        input2 = "";
        operation = " * ";
      } else {
        operation = "";
      }
    });
  }

  void Division(String text) {
    setState(() {
      if (input2 == "") operation = "";
      if (input) {
        result = (input1 + operation + input2).interpret();
        input1 = result.toString();
        input2 = "";
        operation = " / ";
      } else {
        operation = "";
      }
    });
  }

  void equal_To(String text) {
    setState(() {
      if (input2 == "") operation = "";
      if (input) {
        result = (input1 + operation + input2).interpret();
        input1 = result.toString();
        input2 = "";
        operation = "";
      }
    });
  }

  void Clear(String Text) {
    setState(() {
      if (input2 != "") {
        input2 = Delete(input2);
      } else {
        if (operation != "")
          operation = "";
        else {
          input1 = Delete(input1);
          if (input1 == "") input = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown[900],
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: Text(
                    input1 + operation + input2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Divider(height: 20.0),
                Text(
                  "$result",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button("7", _pushBackInput),
                    Text_Button("8", _pushBackInput),
                    Text_Button("9", _pushBackInput),
                    Text_Button("/", Division),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button("4", _pushBackInput),
                    Text_Button("5", _pushBackInput),
                    Text_Button("6", _pushBackInput),
                    Text_Button("*", Multiplication),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button("1", _pushBackInput),
                    Text_Button("2", _pushBackInput),
                    Text_Button("3", _pushBackInput),
                    Text_Button("+", Addition),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button(".", _pushBackInput),
                    Text_Button("0", _pushBackInput),
                    Text_Button("00", _pushBackInput),
                    Text_Button("-", Substraction),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text_Button("CLEAR", Clear),
                    Text_Button("=", equal_To)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
