import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/widget/button_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/cart_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/scaffold_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/text_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      onBackPressed: () {},
      title: const Text('appbar'),
      header: const Text(
        'header',
        style: TextStyle(color: Colors.black),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextFieldWidget(
              placeholder: 'Hola',
            ),
            ButtonWidget(
              text: 'boton',
              onPressed: () {},
            ),
            const TextWidget(
              text: 'texto',
            ),
            Card(
              child: Image.network(
                  'https://cdn2.thecatapi.com/images/J2PmlIizw.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
