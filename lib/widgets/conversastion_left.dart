import 'package:flutter/material.dart';

class ConversationLeft extends StatelessWidget {
  final int colorPersonName;
  final bool isVerified;
  final String name, message;

  const ConversationLeft(
      {Key key, this.colorPersonName, this.isVerified, this.name, this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.person),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 200,
                child: Card(
                  color: Color(0xFFFFFFFF),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  color: Color(colorPersonName), fontSize: 18),
                            ),
                            Visibility(
                              visible: isVerified,
                              child: Icon(
                                Icons.verified_user,
                                color: Color(colorPersonName),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            message,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  '00:00',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
