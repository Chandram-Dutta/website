import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class CardNameAndPhoto extends StatelessWidget {
  const CardNameAndPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.white,
        color: Color.fromRGBO(209, 0, 0, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 20,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return DesktopCard();
            } else {
              return MobileCard();
            }
          },
        ));
  }
}

class DesktopCard extends StatelessWidget {
  const DesktopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: listElemets)
          ],
        ),
      ),
    );
  }
}

class MobileCard extends StatelessWidget {
  const MobileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: listElemets),
      ),
    );
  }
}

var listElemets = <Widget>[
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: AvatarGlow(
      glowColor: Colors.black,
      repeat: true,
      showTwoGlows: true,
      duration: Duration(milliseconds: 1000),
      endRadius: 115,
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
      ),
    ),
  )
];
