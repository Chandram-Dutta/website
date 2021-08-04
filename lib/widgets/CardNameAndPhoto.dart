import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:glass/glass.dart';

class CardNameAndPhoto extends StatelessWidget {
  const CardNameAndPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return DesktopCard();
          } else {
            return MobileCard();
          }
        },
      ),
    ).asGlass(
      frosted: false,
      tintColor: Colors.black,
      clipBorderRadius: BorderRadius.circular(25.0),
    );
  }
}

class DesktopCard extends StatelessWidget {
  const DesktopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: listElemets);
  }
}

class MobileCard extends StatelessWidget {
  const MobileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: listElemets);
  }
}

var listElemets = <Widget>[
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: AvatarGlow(
      glowColor: Colors.white,
      repeat: true,
      showTwoGlows: true,
      duration: Duration(milliseconds: 1000),
      endRadius: 175,
      child: CircleAvatar(
        foregroundImage: AssetImage("assets/icons/ChandramPhoto.jpg"),
        radius: 75,
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      "Hello!!!\nI am Chandram Dutta",
      style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  )
];
