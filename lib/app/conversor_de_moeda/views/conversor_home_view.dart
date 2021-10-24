import 'package:flutter/material.dart';

class CDMHomeView extends StatelessWidget {
  const CDMHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de Moedas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  label: Text("Real"), border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  label: Text("Dolar"), border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  label: Text("Euro"), border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
