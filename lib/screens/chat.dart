import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF2267A2)
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.people,color: Colors.white,),
            Text('Digi, Sushi and 3 others'),
            Icon(Icons.call,color: Colors.white),
            Icon(Icons.videocam, color: Colors.white)
          ],
        ),
      ),
        body: ListView(

        ),
      ),
    );
  }
}
