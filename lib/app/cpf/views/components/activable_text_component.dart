import 'package:flutter/material.dart';

class ActivableText extends StatelessWidget {
  const ActivableText(
      {Key? key, required String this.text, required Color this.color})
      : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color));
  }
}
