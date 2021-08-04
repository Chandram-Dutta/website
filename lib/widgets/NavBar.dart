import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/services/SendMail.dart';
import 'package:website/services/UrlLauncher.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listElements),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: listElements),
      ),
    );
  }
}

var listElements = <Widget>[
  Text(
    "Chandram Dutta",
    style: TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
  ),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {
            sendMail();
          },
          icon: Icon(CupertinoIcons.mail),
          color: Colors.black,
          tooltip: "Mail Me",
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {
            launchUrl("https://github.com/Chandram-Dutta");
          },
          icon: Image.asset("assets/icons/github.png"),
          tooltip: "Explore My GitHub Account",
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {
            launchUrl("https://instagram.com/chandram_dutta");
          },
          icon: Image.asset("assets/icons/instagram.png"),
          tooltip: "My Instagram Photos",
        ),
        SizedBox(
          width: 30,
        ),
        IconButton(
          onPressed: () {
            launchUrl("https://twitter.com/ChandramDutta");
          },
          icon: Image.asset("assets/icons/twitter.png"),
          tooltip: "My Tweets @ Twitter",
        ),
      ],
    ),
  )
];
