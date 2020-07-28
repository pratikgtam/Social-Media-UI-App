import 'package:flutter/material.dart';

class ConversationRightMessage extends StatelessWidget {
  final String message;
  final String time;
  const ConversationRightMessage({
    Key key,
    this.message,
    this.time
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
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 16),
                          child: Text(
                            message,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(Icons.check, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
//                    Spacer(
//                      flex: 1,
//                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,4,0,25),
            child: Text(time, style: TextStyle(color: Colors.grey),),
          )
        ],
      ),
    );
  }
}
