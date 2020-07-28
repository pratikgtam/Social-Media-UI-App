import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/conversastion_left.dart';
import 'package:social_media_app/widgets/conversastion_left_emoji.dart';
import 'package:social_media_app/widgets/conversastion_right_message.dart';
import 'package:social_media_app/widgets/info_message.dart';
import 'package:social_media_app/widgets/welcome_all.dart';

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
            ConversationRightMessage(
              message: 'Hey ! Whatsup',
              time: '1:00 pm',
            ),
            WelcomeAll(name: 'Broadcast [Digi]', message: 'Welcome all'),
            buildSentTea(),
            buildGiveAFly(),
            SilentUnsilent(
              backgroundColor: 0xFFD2E0EC,
              textColor: 0xFF0B6623,
            ),
            SilentUnsilent(
              backgroundColor: 0xFFE6EFEA,
              textColor: 0xFF586ff4,
            ),
            AudioVideoChat(
              title: 'Video Chat',
              talkTime: '1 min',
              currentTIme: '01:00 pm',
              iconData: Icons.videocam,
            ),
            left('Sandy[8]', Icons.exit_to_app),
            MissedCalls(
              iconData: Icons.phone_missed,
              message: 'Missed Call at 1:00 pm',
            ),
            MissedCalls(
              iconData: Icons.missed_video_call,
              message: 'Missed Video Call at 1:00 pm',
            ),
            AudioVideoChat(
              iconData: Icons.phone,
              title: 'Audio Chat',
              currentTIme: '1:00 pm',
              talkTime: '1 min',
            ),
            buildError('Error: Invalid Command'),
            ListTile(
              title: Row(
                children: <Widget>[
                  Text('Digi', style: TextStyle(color: Colors.green),),
                  Icon(Icons.verified_user, color: Colors.green,)
                ],
              ),
              subtitle: Image.asset('assets/emoji.png'),
              leading: Icon(icon),
            )
          ],
        ),
      ),
    );
  }

  Container buildError(String errorMsg) {
    return Container(
      margin: EdgeInsets.fromLTRB(16,0,16,8),
      padding: EdgeInsets.only(left: 16,top: 8,bottom: 8,right: 16),
      color: Color(0xffFEE7EA),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.error,
            color: Color(0xffC2001A),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(errorMsg, style: TextStyle(color:Color(0xffC2001A) ),),
          )
        ],
      ),
    );
  }

  Padding left(String name, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name + ' has left. ',
            style: TextStyle(color: Colors.red),
          ),
          Icon(
            iconData,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  Container buildSentTea() {
    return Container(
      margin: EdgeInsets.all(18),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF3F7FA),
            width: 3,
          ),
          borderRadius: BorderRadius.all(
              Radius.circular(15))), //       <--- BoxDecoration here

      child: RichText(
        text: TextSpan(
          text: '<< ',
          style: TextStyle(color: Colors.pink, fontSize: 18),
          children: [
            TextSpan(text: "Digi ", style: TextStyle(color: Colors.green)),
            WidgetSpan(
              child: Icon(
                Icons.verified_user,
                size: 18,
                color: Colors.green,
              ),
            ),
            TextSpan(text: "[2] ", style: TextStyle(color: Colors.green)),
            TextSpan(text: "sent a tea ", style: TextStyle(color: Colors.pink)),
            WidgetSpan(
              child: Icon(
                Icons.local_drink,
                size: 18,
                color: Colors.green,
              ),
            ),
            TextSpan(text: " to ", style: TextStyle(color: Colors.pink)),
            TextSpan(text: 'evilboy ', style: TextStyle(color: Colors.red)),
            WidgetSpan(
              child: Icon(
                Icons.verified_user,
                size: 18,
                color: Colors.red,
              ),
            ),
            TextSpan(text: ' [520] ', style: TextStyle(color: Colors.red)),
            TextSpan(text: '>>', style: TextStyle(color: Colors.pink)),
          ],
        ),
      ),
    );
  }

  Container buildGiveAFly() {
    return Container(
      margin: EdgeInsets.all(18),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFF3F7FA),
            width: 3,
          ),
          borderRadius: BorderRadius.all(
              Radius.circular(15))), //       <--- BoxDecoration here

      child: RichText(
        text: TextSpan(
          text: '',
          style: TextStyle(color: Colors.pink, fontSize: 18),
          children: [
            WidgetSpan(
              child: Icon(
                Icons.star,
                size: 18,
                color: Colors.black,
              ),
            ),
            TextSpan(
                text: "** [Gift Shower] ",
                style: TextStyle(color: Colors.black)),
            TextSpan(text: "Digi ", style: TextStyle(color: Colors.green)),
            WidgetSpan(
              child: Icon(
                Icons.verified_user,
                size: 18,
                color: Colors.green,
              ),
            ),
            TextSpan(text: "[2] ", style: TextStyle(color: Colors.green)),
            TextSpan(
                text: "gave a fly ", style: TextStyle(color: Colors.black)),
            WidgetSpan(
              child: Icon(
                Icons.settings_system_daydream,
                size: 18,
                color: Colors.black,
              ),
            ),
            TextSpan(
                text: " to all 2 users in the chatroom. Hurray! ** ",
                style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class MissedCalls extends StatelessWidget {
  final IconData iconData;
  final String message;

  const MissedCalls({
    Key key,
    this.iconData,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              color: Color(0xffE9F2FF),
              padding: EdgeInsets.all(8),
              child: Icon(
                iconData,
                color: Colors.red,
                size: 18,
              )),
          Container(
              color: Color(0xffe9f2ff),
              padding: EdgeInsets.all(8),
              child: Text(
                message,
                style: TextStyle(fontSize: 15, color: Color(0xff9B9DA0)),
              ))
        ],
      ),
    );
  }
}

class AudioVideoChat extends StatelessWidget {
  final String title, talkTime, currentTIme;
  final IconData iconData;

  const AudioVideoChat({
    this.talkTime,
    this.title,
    this.currentTIme,
    this.iconData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Spacer(
                flex: 4,
              ),
              Expanded(
                  flex: 6,
                  child: Card(
                    elevation: 0,
                    color: Color(0xffF0f0f0),
                    child: ListTile(
                      title: Text(title),
                      subtitle: Text(talkTime),
                      leading: Container(
                          height: double.infinity, child: Icon(iconData)),
                    ),
                  )),
//                    Spacer(
//                      flex: 1,
//                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 25),
            child: Text(
              currentTIme,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}

class SilentUnsilent extends StatelessWidget {
  final int backgroundColor, textColor;

  const SilentUnsilent({
    @required this.backgroundColor,
    @required this.textColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(backgroundColor),
      margin: EdgeInsets.only(left: 32, right: 32, bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications_off,
              color: Color(textColor),
            ),
            Text(
              'This chatroom is silenced by grisma99',
              style: TextStyle(color: Color(textColor)),
            )
          ],
        ),
      ),
    );
  }
}
