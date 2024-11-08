import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      // Indicador de carga para iOS
      return const CupertinoActivityIndicator(
        radius: 15.0, // Puedes ajustar el tamaño
      );
    } else {
      // Indicador de carga para Android (u otras plataformas)
      return const CircularProgressIndicator(
        strokeWidth: 3.0, // Puedes ajustar el grosor
      );
    }
  }
}
