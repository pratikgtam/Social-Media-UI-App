import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/conversastion_left.dart';
import 'package:social_media_app/widgets/conversastion_left_emoji.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xFF2267A2)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.people,
                color: Colors.white,
              ),
              Text('Digi, Sushi and 3 others'),
              Icon(Icons.call, color: Colors.white),
              Icon(Icons.videocam, color: Colors.white),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                  child: Text(
                'App has added Nepal, digi, to group chat',
                style: TextStyle(color: Colors.grey),
              )),
            ),
            ConversationLeft(
              colorPersonName: 0xFF00AA63,
              name: 'Digi',
              message: 'Hi, How are you?',
              isVerified: true,
            ),
            ConversationLeft(
              colorPersonName: 0xFFF45353,
              name: 'Sushi',
              message: 'Whatsup?',
              isVerified: true,
            ),
            ConversationLeft(
              colorPersonName: 0xFF2368A3,
              name: 'Susan',
              message: 'Whatsup?',
              isVerified: false,
            ),
            ConversationLeftEmoji(
              colorPersonName: 0xFF2368A3,
              name: 'extra',
              emoji: 'assets/emoji.png',
              isVerified: false,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  Container(
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          width: 200,
                          padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
                          child: Text(
                            'Hey! Whats up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.check),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
