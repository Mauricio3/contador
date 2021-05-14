import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var quantidade = 0;

  incrementar() {
    setState(() {
      quantidade++;
    });
  }

  decrementar() {
    setState(() {
      if (quantidade <= 0) {
        quantidade = 0;
      } else {
        quantidade--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.white54,
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Quantidade",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                Text(
                  "$quantidade",
                  style: TextStyle(fontSize: 40.0),
                ),
                ButtonBar(
                  children: [
                    TextButton(
                        child: Text("incrementar"), onPressed: incrementar),
                    TextButton(
                        child: Text("decrementar"), onPressed: decrementar),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
