import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String placeholder;

  const TextFieldWidget({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            suffix: const Icon(Icons.manage_search_sharp),
            placeholder: placeholder,
            placeholderStyle: const TextStyle(
              fontFamily: 'Adlinnaka',
              color: CupertinoColors.systemGrey,
              fontSize: 16,
            ),
            style: const TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: 16,
              color: Colors.deepPurple,
            ),
            cursorColor: Colors.deepPurple,
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.deepPurple),
            ),
          )
        : TextField(
            decoration: InputDecoration(
              suffix: const Icon(Icons.manage_search_sharp),
              hintText: placeholder,
              hintStyle: TextStyle(
                fontFamily: 'Adlinnaka',
                color: Colors.purple.shade200,
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Colors.deepPurple),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                    const BorderSide(color: Colors.deepPurple, width: 2.0),
              ),
            ),
            style: const TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: 16,
              color: Colors.deepPurple,
            ),
            cursorColor: Colors.deepPurple,
          );
  }
}
