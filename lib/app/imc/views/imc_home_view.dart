import 'package:flutter/material.dart';

class IMCHomeView extends StatelessWidget {
  const IMCHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  label: Text("Peso"), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text("Altura"), border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Seu IMC é",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 10,
            ),
            Text("resultado",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87))
          ],
        ),
      ),
    );
  }
}
