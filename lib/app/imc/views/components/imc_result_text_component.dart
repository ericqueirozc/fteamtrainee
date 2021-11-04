import 'package:flutter/material.dart';

class ImcResultText extends StatelessWidget {
  const ImcResultText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Seu IMC é",
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black45),
    );
  }
}
