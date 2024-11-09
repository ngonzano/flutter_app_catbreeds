import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoActivityIndicator(
          radius: 20.0, color: CupertinoColors.activeBlue);
    } else {
      return const CircularProgressIndicator(
        strokeWidth: 3.0,
      );
    }
  }
}
