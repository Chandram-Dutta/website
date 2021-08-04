import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CoderDesignerLines extends StatelessWidget {
  const CoderDesignerLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 140,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DefaultTextStyle(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 100.0,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText('Coder', speed: Duration(milliseconds: 200)),
            ColorizeAnimatedText('Designer',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                speed: Duration(milliseconds: 290)),
            RotateAnimatedText('&'),
            TyperAnimatedText('More...'),
          ],
        ),
      ),
    );
  }
}

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 100.0,
  fontFamily: 'Horizon',
);
