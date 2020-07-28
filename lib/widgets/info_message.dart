import 'package:flutter/material.dart';

class InfoMessage extends StatelessWidget {
  final RichText messageWithColor;

  const InfoMessage({
    this.messageWithColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffF3F7FA),
        margin: EdgeInsets.all(32),
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' world!'),
            ],
          ),
        ));
  }
}
