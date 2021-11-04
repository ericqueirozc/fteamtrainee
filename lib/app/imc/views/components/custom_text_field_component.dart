import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required Function this.onChanged,
      required String this.labelText})
      : super(key: key);

  final Function onChanged;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChanged(value),
      decoration:
          InputDecoration(labelText: labelText, border: OutlineInputBorder()),
    );
  }
}
