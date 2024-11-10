import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_catbreeds/app/constant/cat_breeds_color.dart';
import 'package:flutter_app_catbreeds/platform_channel.dart';
import 'package:flutter_app_catbreeds/presentation/widget/alert_dialog.dart';

import 'package:flutter_app_catbreeds/presentation/widget/loading_widget.dart';
import 'package:flutter_app_catbreeds/presentation/widget/scaffold_widget.dart';
import 'package:flutter_app_catbreeds/presentation/widget/text_widget.dart';
import 'package:flutter_app_catbreeds/presentation/widget/textfield_search_widget.dart';
import 'package:flutter_app_catbreeds/data/model/cat_breeds/catbreeds_model.dart';
import 'package:flutter_app_catbreeds/data/repository/catbreeds_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final searchController = TextEditingController();
  ScrollController controller = ScrollController();
  final ScrollController _scrollController = ScrollController();
  //
  TextEditingController textSearchController = TextEditingController();
  List<CatbreedsModel> _allItems = [];
  List<CatbreedsModel> _filteredItems = [];
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      model(context);
    });

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection !=
          ScrollDirection.idle) {
        FocusScope.of(context).unfocus();
      }
    });
  }

  Future<void> model(BuildContext ctx) async {
    final result = await PlatformService.getPlatformVersion();
    if (!context.mounted) return;
    showPlatformDialog(
        context: ctx,
        title: 'Message',
        content:
            'You are interacting with a device ${result['deviceName']} in its version ${result['osVersion']}',
        confirmText: 'Aceptar',
        onConfirm: () {
          context.pop();
        });
  }

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

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(listCatProvider);
    final size = MediaQuery.sizeOf(context);

    return ScaffoldWidget(
      toolbarHeight: 140,
      title: Column(
        children: [
          const TextWidget(
            text: 'Cat Breeds',
          ),
          const SizedBox(height: 10),
          TextFieldSearch(
            placeholder: 'Search Cat breed',
            textController: textSearchController,
            onChanged: _onSearchChanged,
            onPressed: () {
              textSearchController.clear();
              setState(() {
                _filteredItems = [];
              });
            },
          ),
        ],
      ),
      widget: result.when(
        data: (data) {
          _allItems = data;

          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                if (_filteredItems.isEmpty &&
                    textSearchController.text.isNotEmpty) ...[
                  Card(
                    surfaceTintColor: CatBreedsColors.gray200,
                    shadowColor: CatBreedsColors.gray200,
                    color: CatBreedsColors.white,
                    elevation: 10,
                    margin: const EdgeInsets.all(20.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          LottieBuilder.asset(
                            'assets/json/cat.json',
                            width: size.width,
                            height: size.height * 0.2,
                          ),
                          const SizedBox(height: 20),
                          const Center(
                            child: TextWidget(
                              text: 'there is no kitten',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ] else ...[
                  ListView.builder(
                    controller: controller,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(bottom: 50),
                    shrinkWrap: true,
                    itemCount: _filteredItems.isEmpty
                        ? _allItems.length
                        : _filteredItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = _filteredItems.isEmpty
                          ? _allItems[index]
                          : _filteredItems[index];

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
                              context.pushNamed(
                                '/details',
                                queryParameters: {
                                  'id': item.id,
                                  'description': item.breeds?.first.description,
                                  'country': item.breeds?.first.origin,
                                  'temperament': item.breeds?.first.temperament,
                                  'breed': item.breeds?.first.name,
                                  'intelligence': item
                                      .breeds?.first.intelligence
                                      .toString(),
                                  'url_image': item.url,
                                  'adaptability': item
                                      .breeds?.first.adaptability
                                      .toString(),
                                },
                              );
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
                                                '''Breed\n${item.breeds != null && item.breeds!.isNotEmpty ? item.breeds!.first.name : 'No data'}''',
                                          ),
                                        ),
                                        const TextWidget(text: 'Se more...'),
                                      ],
                                    ),
                                    SizedBox(height: size.height * 0.01),
                                    Hero(
                                      tag: item.id!,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: AspectRatio(
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
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          vertical: 100.0,
                                                          horizontal: 20,
                                                        ),
                                                        child: Center(
                                                          child: Column(
                                                            children: [
                                                              LoadingWidget(),
                                                              SizedBox(
                                                                  height: 10),
                                                              TextWidget(
                                                                  text:
                                                                      'Loading images...')
                                                            ],
                                                          ),
                                                        ),
                                                      ),
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
                                                '''Country\n${item.breeds != null && item.breeds!.isNotEmpty ? item.breeds!.first.origin : 'No data'}''',
                                          ),
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        TextWidget(
                                          text:
                                              '''Intelligence\n${item.breeds != null && item.breeds!.isNotEmpty ? item.breeds!.first.intelligence : 0}''',
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
                ]
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
              TextWidget(text: 'Loading ...')
            ],
          ),
        ),
      ),
    );
  }
}
