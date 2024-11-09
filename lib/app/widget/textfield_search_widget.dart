import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';

class TextFieldSearch extends StatelessWidget {
  final String placeholder;
  final TextEditingController textController;
  final Function(String) onChanged;

  const TextFieldSearch(
      {super.key,
      required this.placeholder,
      required this.textController,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSearchTextField(
            onChanged: onChanged,
            controller: textController,
            placeholder: placeholder,
            placeholderStyle: const TextStyle(
              fontFamily: 'Adlinnaka',
              color: CupertinoColors.systemGrey,
              fontSize: 16,
            ),
            style: const TextStyle(
              fontFamily: 'Adlinnaka',
              fontSize: 18,
              color: CupertinoColors.black,
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: CatBreedsColors.primaryColor),
            ),
          )
        : SizedBox(
            height: 65,
            child: TextField(
              cursorWidth: 2,
              onChanged: onChanged,
              controller: textController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffix: IconButton(
                    onPressed: () {
                      textController.clear();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                    )),
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
            ),
          );
  }
}
