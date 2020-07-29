import 'package:flutter/material.dart';

class ProfileAndStatus extends StatelessWidget {
  final String profile;
  final bool visibleStatus;
  final Color statusColor;

  const ProfileAndStatus({
    Key key,
    this.profile,
    this.visibleStatus = true,
    this.statusColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2,8,2,8),
      child: Stack(overflow: Overflow.visible, children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(profile),
          radius: 25,
        ),
        new Positioned(
          left: 30.0,
          bottom: -5,
          child: Visibility(
              visible: visibleStatus,
              child: new Icon(Icons.brightness_1,
                  size: 20.0, color: statusColor)),
        ),
      ]),
    );
  }
}
