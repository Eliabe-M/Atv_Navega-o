import 'package:flutter/material.dart';
import 'TelaTres.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Tela Secundária!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Switch(
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaTres()),
                );
              },
              child: Text("Ir para Tela Três"),
            ),
          ],
        ),
      ),
    );
  }
}
