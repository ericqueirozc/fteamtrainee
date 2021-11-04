import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard({Key? key, required String this.title, required String this.route})
      : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
