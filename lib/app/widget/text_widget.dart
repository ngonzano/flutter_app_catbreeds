// cadbreeds_text.dart
import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Text(
            text,
            style: const TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: 18,
              color: CupertinoColors.activeBlue, // Color para iOS
            ),
          )
        : Text(
            text,
            style: const TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: 18,
              color: Colors.deepPurple, // Color para Android
            ),
          );
  }
}
