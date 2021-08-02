import 'package:flutter/material.dart';
import 'package:website/widgets/CardNameAndPhoto.dart';
import 'package:website/widgets/NavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(1, 0, 58, 150),
              Colors.black,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavBar(),
              CardNameAndPhoto(),
            ],
          ),
        ),
      ),
    );
  }
}
