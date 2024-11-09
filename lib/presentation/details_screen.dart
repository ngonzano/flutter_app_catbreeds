import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/widget/scaffold_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/scrollbar_widget.dart';

import 'package:flutter_app_catbreeds/app/widget/text_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final description = data['description'].toString();
    final country = data['country'].toString();
    final temperament = data['temperament'].toString();
    final breed = data['breed'].toString();
    final intelligence = data['intelligence'].toString();
    final urlImage = data['url_image'].toString();

    final adaptability = data['adaptability'].toString();

    return ScaffoldWidget(
      title: TextWidget(
        text: data['breed'],
      ),
      onBackPressed: () {
        context.go('/');
      },
      widget: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final height = constraints.maxHeight;
          final width = constraints.maxWidth;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.9,
                height: height * 0.5,
                child: Image.network(
                  urlImage,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: width,
                height: height * 0.5,
                child: ScrollBarWidget(
                  widget: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                          width: width,
                        ),
                        const TextWidget(text: 'Description'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: description,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'Country'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: country,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'Temperament'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: temperament,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'breed'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: breed,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'Intelligence'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: intelligence,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                        const TextWidget(text: 'adaptability'),
                        const SizedBox(height: 5),
                        TextWidget(
                          text: adaptability,
                          fontSize: 16,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
