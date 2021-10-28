import 'package:flutter/material.dart';
import 'package:varios_apps/app/conversor_de_moeda/controllers/price_%20controller.dart';

class PriceView extends StatefulWidget {
  const PriceView({Key? key}) : super(key: key);

  @override
  _PriceViewState createState() => _PriceViewState();
}

class _PriceViewState extends State<PriceView> {
  final PriceController controller = PriceController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Price de Moedas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: controller.realController,
                onChanged: (value) {
                  value == ""
                      ? controller.clearFields()
                      : controller.realToDollarAndEuro(double.parse(value));
                },
                decoration: InputDecoration(
                    labelText: "Real", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  value == ""
                      ? controller.clearFields()
                      : controller.dollarToRealAndEuro(double.parse(value));
                },
                controller: controller.dollarController,
                decoration: InputDecoration(
                    labelText: "Dolar", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  value == ""
                      ? controller.clearFields()
                      : controller.euroToRealAndDollar(double.parse(value));
                },
                controller: controller.euroController,
                decoration: InputDecoration(
                    labelText: "Euro", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}