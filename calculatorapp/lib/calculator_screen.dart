import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorApp> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "⌫") {
      _output =
          _output.length > 1 ? _output.substring(0, _output.length - 1) : "0";
    } else if (buttonText == "÷" ||
        buttonText == "x" ||
        buttonText == "-" ||
        buttonText == "+") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (!_output.contains(".")) {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "÷") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      output = double.parse(_output).toString();
    });
  }

  Widget buildButton(String buttonText, Color buttonColor, Color textColor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, color: textColor),
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              output,
              style: TextStyle(fontSize: 48.0, color: Colors.white),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [
                  buildButton("AC", Colors.blueGrey, Colors.white),
                  buildButton("⌫", Colors.blueGrey, Colors.white),
                  buildButton("÷", Colors.blueGrey, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("7", Colors.grey, Colors.white),
                  buildButton("8", Colors.grey, Colors.white),
                  buildButton("9", Colors.grey, Colors.white),
                  buildButton("x", Colors.blueGrey, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("4", Colors.grey, Colors.white),
                  buildButton("5", Colors.grey, Colors.white),
                  buildButton("6", Colors.grey, Colors.white),
                  buildButton("-", Colors.blueGrey, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("1", Colors.grey, Colors.white),
                  buildButton("2", Colors.grey, Colors.white),
                  buildButton("3", Colors.grey, Colors.white),
                  buildButton("+", Colors.blueGrey, Colors.white),
                ],
              ),
              Row(
                children: [
                  buildButton("%", Colors.grey, Colors.white),
                  buildButton("0", Colors.grey, Colors.white),
                  buildButton(".", Colors.grey, Colors.white),
                  buildButton("=", Colors.blue, Colors.white),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
