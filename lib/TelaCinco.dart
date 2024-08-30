import 'package:flutter/material.dart';

class TelaCinco extends StatefulWidget {
  @override
  _TelaCincoState createState() => _TelaCincoState();
}

class _TelaCincoState extends State<TelaCinco> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Cinco"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Tela Cinco!!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite algo aqui',
                hintText: 'Insira seu texto',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Texto Inserido'),
                      content: Text(_controller.text),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Mostrar Texto Inserido"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text("Voltar para Tela Principal"),
            ),
          ],
        ),
      ),
    );
  }
}
