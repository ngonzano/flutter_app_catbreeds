import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Platform.isIOS
            ? CupertinoButton(
                color: CupertinoColors.activeBlue,
                onPressed: onPressed,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'Adlinnaka',
                    color: CupertinoColors.white,
                  ),
                ),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: CatBreedsColors.primaryColor,
                  backgroundColor: CatBreedsColors.white,
                  textStyle: const TextStyle(fontFamily: 'Adlinnaka'),
                ),
                onPressed: onPressed,
                child: Text(text),
              ),
      ],
    );
  }
}
