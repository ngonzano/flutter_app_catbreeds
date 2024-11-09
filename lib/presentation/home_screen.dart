import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';

import 'package:flutter_app_catbreeds/app/widget/loading_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/scaffold_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/text_widget.dart';
import 'package:flutter_app_catbreeds/app/widget/textfield_search_widget.dart';
import 'package:flutter_app_catbreeds/data/model/cat_breeds/catbreeds_model.dart';
import 'package:flutter_app_catbreeds/data/repository/catbreeds_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final searchController = TextEditingController();
  ScrollController controller = ScrollController();
  //
  TextEditingController textSearchController = TextEditingController();
  List<CatbreedsModel> _allItems = [];
  List<CatbreedsModel> _filteredItems = [];
  Timer? _debounceTimer;

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer?.cancel();
    }

    _debounceTimer = Timer(const Duration(milliseconds: 300), () {
      setState(() {
        _filteredItems = _allItems
            .where((item) => item.breeds!.first.name!
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList();
      });
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    final result = ref.watch(listCatProvider);
    final size = MediaQuery.sizeOf(context);
    return ScaffoldWidget(
      title: const TextWidget(
        text: 'Cat Breeds',
      ),
      widget: result.when(
        data: (data) {
          _allItems = data;
          _filteredItems = _allItems;
          return SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: TextFieldSearch(
                    placeholder: 'Search breed',
                    textController: textSearchController,
                    onChanged: _onSearchChanged,
                  ),
                ),
                ListView.builder(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 50),
                  shrinkWrap: true,
                  itemCount: _filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _filteredItems[index];
                    if (item.breeds == null) {
                      return const Card(
                        surfaceTintColor: CatBreedsColors.primaryColor,
                        shadowColor: CatBreedsColors.gray200,
                        elevation: 10,
                        child: Center(
                          child: TextWidget(
                            text: 'No data',
                          ),
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: CatBreedsColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: CatBreedsColors.gray400,
                            )),
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            context.goNamed('/details', queryParameters: {
                              'description': item.breeds?.first.description,
                              'country': item.breeds?.first.origin,
                              'temperament': item.breeds?.first.temperament,
                              'breed': item.breeds?.first.name,
                              'intelligence':
                                  item.breeds?.first.intelligence.toString(),
                              'url_image': item.url,
                              'adaptability':
                                  item.breeds?.first.adaptability.toString(),
                            });
                          },
                          child: Card(
                            elevation: 10,
                            shadowColor: CatBreedsColors.blackColor,
                            color: CatBreedsColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: TextWidget(
                                            text:
                                                '''Breed\n${item.breeds?.first.name ?? 'No registrado'}'''),
                                      ),
                                      const TextWidget(text: 'Se more...'),
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Image.network(
                                      width: size.width,
                                      height: size.height * 0.2,
                                      item.url!,
                                      fit: BoxFit.fill,
                                      loadingBuilder: (_, child,
                                              loadingProgress) =>
                                          loadingProgress == null
                                              ? child
                                              : const Padding(
                                                  padding: EdgeInsets.all(20.0),
                                                  child: Column(
                                                    children: [
                                                      LoadingWidget(),
                                                      SizedBox(height: 10),
                                                      TextWidget(
                                                          text:
                                                              'Loading images...')
                                                    ],
                                                  ),
                                                ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: TextWidget(
                                          text:
                                              '''Country\n${item.breeds?.first.origin ?? 'No data'}''',
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      TextWidget(
                                        text:
                                            '''Intelligence\n${item.breeds?.first.intelligence ?? 0}''',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
        error: (error, _) => Text('Error: $error'),
        loading: () => SizedBox(
          width: size.width,
          height: size.height,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadingWidget(),
              SizedBox(height: 20),
              TextWidget(text: 'Cargando datos ...')
            ],
          ),
        ),
      ),
    );
  }
}
