import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
  const SpacerComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}
