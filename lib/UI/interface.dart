import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  double _contadorMonetario = 0;

  void _plusMonetario() {
    setState(() {
      _contadorMonetario = _contadorMonetario + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magnata"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Center(
              child: Text(
                "Fique Rico!!",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "\$ $_contadorMonetario",
                  style: TextStyle(
                      fontSize: 35.0,
                      color: _contadorMonetario >= 10000 ? Colors.black: Colors.green,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: FlatButton(
                  onPressed: _plusMonetario,
                  color: Colors.green,
                  child: Text(
                    "Ganhe mais dinheiro!!",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
