import 'dart:io' show Platform;
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
    return Platform.isIOS
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
