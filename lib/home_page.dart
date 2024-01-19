import 'dart:math';
import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void dofloor() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).floor();
    });
  }

  void doCeil() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).ceil();
    });
  }

  void doSqrt() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      double sqr = sqrt(num1 * num2);
      sum = sqr.toInt();
    });
  }

  void doLog() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      double logt = log(num1 * num2);
      sum = logt.toInt();
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output: $sum",
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 119, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Enter Number 1"),
                controller: t1),
            TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Enter Number 2"),
                controller: t2),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    ElevatedButton(onPressed: doAdd, child: Text("+")),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    ElevatedButton(onPressed: doSub, child: Text("-")),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    ElevatedButton(onPressed: doMul, child: Text("*")),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    ElevatedButton(onPressed: doDiv, child: Text("/")),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                  ],
                ),
                Row(children: [
                  ElevatedButton(onPressed: dofloor, child: Text("floor")),
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  ElevatedButton(onPressed: doCeil, child: Text("ceil")),
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  ElevatedButton(onPressed: doSqrt, child: Text("sqrt")),
                  const Padding(padding: EdgeInsets.only(right: 10.0)),
                  ElevatedButton(onPressed: doLog, child: Text("Log")),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(onPressed: doClear, child: Text("clear"))
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
