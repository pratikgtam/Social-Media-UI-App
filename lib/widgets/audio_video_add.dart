import 'package:flutter/material.dart';

class AudioVideoAdd extends StatelessWidget {
  final IconData icondata;
  final String name;
  const AudioVideoAdd({
    Key key, this.icondata, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            child: Icon(icondata, color: Color(0xff3D6485),),
            radius: 25,
            backgroundColor: Color(0xffF0F0F0),
          ),
          Text(name)
        ],
      ),
    );
  }
}
