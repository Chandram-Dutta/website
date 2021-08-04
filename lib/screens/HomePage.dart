import 'package:flutter/material.dart';
import 'package:website/widgets/CardNameAndPhoto.dart';
import 'package:website/widgets/CodeDesignerLInes.dart';
import 'package:website/widgets/NavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 2000,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black,
              // Color.fromARGB(1, 32, 9, 237),
              Colors.red,
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
              CoderDesignerLines(),
            ],
          ),
        ),
      ),
    );
  }
}
