import 'package:flutter/material.dart';
import 'TelaQuatro.dart';

class TelaTres extends StatefulWidget {
  @override
  _TelaTresState createState() => _TelaTresState();
}

class _TelaTresState extends State<TelaTres> {
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Três"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Tela Três!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuatro()),
                );
              },
              child: Text("Ir para Tela Quatro"),
            ),
          ],
        ),
      ),
    );
  }
}
