import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PlatformImageCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? subtitle;

  const PlatformImageCard({
    Key? key,
    required this.imageUrl,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      // Si es iOS, usar un diseño de Cupertino
      return CupertinoCard(
        imageUrl: imageUrl,
        title: title,
        subtitle: subtitle,
      );
    } else {
      // Si no es iOS (por ejemplo, Android), usar un diseño Material
      return MaterialCard(
        imageUrl: imageUrl,
        title: title,
        subtitle: subtitle,
      );
    }
  }
}

class CupertinoCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? subtitle;

  const CupertinoCard({
    super.key,
    required this.imageUrl,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoCard(
      imageUrl: imageUrl,
    );
  }
}

class MaterialCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? subtitle;

  const MaterialCard({
    super.key,
    required this.imageUrl,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl), // Mostrar imagen
          if (title != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title!, style: Theme.of(context).textTheme.bodyLarge),
            ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subtitle!),
            ),
        ],
      ),
    );
  }
}
