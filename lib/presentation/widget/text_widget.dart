import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;

  const TextWidget({
    super.key,
    required this.text,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.iOS
        ? Text(
            text,
            style: TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: fontSize,
              color: CupertinoColors.black,
            ),
            textAlign: TextAlign.justify,
          )
        : Text(
            text,
            style: TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: fontSize,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          );
  }
}
