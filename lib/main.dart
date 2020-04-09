import 'package:flutter/material.dart';

void main() => runApp(CalUI());

class CalUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
        color: buttonColor,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          padding: EdgeInsets.all(16.0),
          onPressed: null,
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 38.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              "0",
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("D", 1, Colors.redAccent),
                      buildButton("E", 1, Colors.redAccent),
                      buildButton("F", 1, Colors.blueAccent),
                      buildButton("⊻", 1, Colors.blueAccent),//XOR
                      buildButton("~", 1, Colors.blueAccent),//NOT
                    ]),
                    TableRow(children: [
                      buildButton("A", 1, Colors.redAccent),
                      buildButton("B", 1, Colors.redAccent),
                      buildButton("C", 1, Colors.blueAccent),
                      buildButton("∧", 1, Colors.blueAccent),//AND
                      buildButton("∨", 1, Colors.blueAccent),//OR
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.black54),
                      buildButton("8", 1, Colors.black54),
                      buildButton("9", 1, Colors.black54),
                      buildButton(".", 1, Colors.blueAccent),
                      buildButton("%", 1, Colors.blueAccent),//MOD
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.black54),
                      buildButton("5", 1, Colors.black54),
                      buildButton("6", 1, Colors.black54),
                      buildButton("×", 1, Colors.blueAccent),
                      buildButton("÷", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.black54),
                      buildButton("2", 1, Colors.black54),
                      buildButton("3", 1, Colors.black54),
                      buildButton("+", 1, Colors.blueAccent),
                      buildButton("-", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("0", 1, Colors.black54),
                      buildButton("00", 1, Colors.black54),
                      buildButton("⌫", 1, Colors.black54),//CLR
                      buildButton("CA", 1, Colors.blueAccent),
                      buildButton("=", 1, Colors.blueAccent),
                    ])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
