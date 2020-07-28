import 'package:flutter/material.dart';

class WelcomeAll extends StatelessWidget {
  final String name, message, image;

  const WelcomeAll({
    this.name,
    this.message,
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF3F7FA),
      margin: EdgeInsets.all(32),
      child: ListTile(
        title: Text(name),
        subtitle: Text(message),
        leading: Container(height: double.infinity, child: Icon(Icons.speaker)),
      ),
    );
  }
}
