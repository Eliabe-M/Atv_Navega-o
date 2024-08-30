import 'package:flutter/material.dart';
import 'TelaCinco.dart';

class TelaQuatro extends StatefulWidget {
  @override
  _TelaQuatroState createState() => _TelaQuatroState();
}

class _TelaQuatroState extends State<TelaQuatro> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Quatro"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Tela Quatro!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCinco()),
                );
              },
              child: Text("Ir para Tela Cinco"),
            ),
          ],
        ),
      ),
    );
  }
}
